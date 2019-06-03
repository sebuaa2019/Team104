#include <algorithm>
#include <fstream>

using namespace std;

#define STATE_READY     0
#define STATE_FOLLOW    1
#define STATE_ASK       2
#define STATE_GOTO      3
#define STATE_GRAB      4
#define STATE_COMEBACK  5
#define STATE_PASS      6
#define STATE_WAIT      7

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
static string strGoto;
static sound_play::SoundRequest spk_msg;
static ros::Publisher spk_pub;
static ros::Publisher vel_pub;
static string strToSpeak = "";
static string strKeyWord = "";
static ros::ServiceClient clientIAT;
static xfyun_waterplus::IATSwitch srvIAT;
static ros::ServiceClient cliGetWPName;
static waterplus_map_tools::GetWaypointByName srvName;
static ros::Publisher add_waypoint_pub;
static ros::ServiceClient follow_start;
static ros::ServiceClient follow_stop;
static ros::ServiceClient follow_resume;
static wpb_home_tutorials::Follow srvFlw;
static ros::Publisher behaviors_pub;
static std_msgs::String behavior_msg;

static ros::Subscriber grab_result_sub;
static ros::Subscriber pass_result_sub;
static bool bGrabDone;
static bool bPassDone;

static int nState = STATE_READY;
static int nDelay = 0;

static vector<string> arKeyword;

#include<iostream>
using namespace std;

void ready(int num)
{
	 if(nState == STATE_READY)
        {
            // 启动后延迟一段时间然后开始跟随
            nDelay ++;
            // ROS_WARN("[STATE_READY] - nDelay = %d", nDelay);
            if(nDelay > 100)
            {
                AddNewWaypoint("start");
                nDelay = 0;
                // nState = STATE_FOLLOW;
                nState = STATE_WAIT;
            }
        }
	cout << " 当前处于刚启动，准备状态"  << endl;
}

void follow(int num)
{ 
 if(nState == STATE_FOLLOW)
        {
            if(nDelay == 0)
            {
               FollowSwitch(false, 0.7);
            }
            nDelay ++;
        }

	cout << "当前处于跟随阶段状态 "  << endl;
}

void ask(int num)
{
	FILE* python_exec = popen("python3 /home/robot/catkin_ws/src/wpb_home_apps/src/ImageRecognition/sdk_ImageRecognition.py", "r");
            char keyword[1024], bash_output[1024]; //设置一个合适的长度，以存储每一行输出

            ifstream in("/home/robot/team104_temp/IR_res.txt");
            if (in.is_open() && !in.eof())
                in >> keyword;
            in.close();
            string objectName(keyword);
            arKeyword.push_back(objectName);

            fgets(bash_output, sizeof(bash_output), python_exec);
            cout << bash_output;
            
            // 发现物品（航点）关键词
            
            ROS_WARN("[[[%s]]]", keyword);
            if (objectName != "Fruit" && objectName != "Bottle")
            {
            	failCount ++;
            	if (failCount <= 1)
            	{
            		string strSpeak = "Unexpected object, try again, please"; 
	            	Speak(strSpeak);
            	} else 
            	{
            		string strSpeak = "Unexpected object and tried for two times. Memoried as Unknown."; 
	            	Speak(strSpeak);
	            	AddNewWaypoint("Unknown");
	            	failCount = 0;
            	}
	            
            } else
            {
		    	AddNewWaypoint(objectName);
	            string strSpeak = objectName + " . OK. I have memoried. Next one , please"; 
	            Speak(strSpeak);
	            failCount = 0;
            }
        }

        // 停止跟随的指令
        int nFindIndex = msg->data.find("top");
        if(nFindIndex >= 0)
        {
            FollowSwitch(false, 0);
            AddNewWaypoint("master");
        //     // nState = STATE_ASK;
            nState = STATE_WAIT;
            nDelay = 0;
        }
    }
	if(nState == STATE_ASK)
    {
        // 从识别结果句子中查找物品（航点）关键词
        string strKeyword = FindKeyword(msg->data);
        int nLenOfKW = strlen(strKeyword.c_str());
        if(nLenOfKW > 0)
        {
            // 发现物品（航点）关键词
            strGoto = strKeyword;
            string strSpeak = strKeyword + " . OK. I will go to get it for you."; 
            Speak(strSpeak);
            nState = STATE_GOTO;
        }
    }
	cout << " 当前处于询问要去哪个航点状态"  << endl;
}

void gotos(int num)
{
	if(nState == STATE_GOTO)
        {
            srvName.request.name = strGoto;
            if (cliGetWPName.call(srvName))
            {
                std::string name = srvName.response.name;
                float x = srvName.response.pose.position.x;
                float y = srvName.response.pose.position.y;
                ROS_INFO("[STATE_GOTO] Get_wp_name = %s (%.2f,%.2f)", strGoto.c_str(),x,y);

                MoveBaseClient ac("move_base", true);
                if(!ac.waitForServer(ros::Duration(5.0)))
                {
                    ROS_INFO("The move_base action server is no running. action abort...");
                }
                else
                {
                    move_base_msgs::MoveBaseGoal goal;
                    goal.target_pose.header.frame_id = "map";
                    goal.target_pose.header.stamp = ros::Time::now();
                    goal.target_pose.pose = srvName.response.pose;
                    ac.sendGoal(goal);
                    ac.waitForResult();
                    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
                    {
                        ROS_INFO("Arrived at %s!",strGoto.c_str());
                        Speak("OK. I am taking it.");
                        nState = STATE_GRAB;
                        nDelay = 0;
                    }
                    else
                    {
                        ROS_INFO("Failed to get to %s ...",strGoto.c_str() );
                        Speak("Failed to go to the waypoint.");
                        nState = STATE_ASK;
                    }
                }
                
            }
            else
            {
                ROS_ERROR("Failed to call service GetWaypointByName");
                Speak("There is no this waypoint.");
                nState = STATE_ASK;
            }
        }
	cout << "当前处于导航去指定航点状态 "  << endl;
}

void grab(int num)
{
	if(nState == STATE_GRAB)
        {
            if(nDelay == 0)
            {
                bGrabDone = false;
                GrabSwitch(true);
            }
            nDelay ++;
            if(bGrabDone == true)
            {
                GrabSwitch(false);
                Speak("I got it. I am coming back.");
                nState = STATE_COMEBACK;
            }
        }
	cout << "当前处于抓取物品状态 "  << endl;
}

void comeback(int num)
{
	if(nState == STATE_COMEBACK)
        {
            srvName.request.name = "master";
            if (cliGetWPName.call(srvName))
            {
                std::string name = srvName.response.name;
                float x = srvName.response.pose.position.x;
                float y = srvName.response.pose.position.y;
                ROS_INFO("[STATE_COMEBACK] Get_wp_name = %s (%.2f,%.2f)", strGoto.c_str(),x,y);

                MoveBaseClient ac("move_base", true);
                if(!ac.waitForServer(ros::Duration(5.0)))
                {
                    ROS_INFO("The move_base action server is no running. action abort...");
                }
                else
                {
                    move_base_msgs::MoveBaseGoal goal;
                    goal.target_pose.header.frame_id = "map";
                    goal.target_pose.header.stamp = ros::Time::now();
                    goal.target_pose.pose = srvName.response.pose;
                    ac.sendGoal(goal);
                    ac.waitForResult();
                    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
                    {
                        ROS_INFO("Arrived at %s!",strGoto.c_str());
                        Speak("Hi,master. This is what you wanted.");
                        nState = STATE_PASS;
                        nDelay = 0;
                    }
                    else
                    {
                        ROS_INFO("Failed to get to %s ...",strGoto.c_str() );
                        Speak("Failed to go to the master.");
                        nState = STATE_ASK;
                    }
                }
                
            }
            else
            {
                ROS_ERROR("Failed to call service GetWaypointByName");
                Speak("There is no waypoint named master.");
                nState = STATE_ASK;
            }
        }
	cout << "当前处于抓完物品回来状态 "  << endl;
}

void pass(int num)
{
	if(nState == STATE_PASS)
        {
            if(nDelay == 0)
            {
                bPassDone = false;
                PassSwitch(true);
            }
            nDelay ++;
            if(bPassDone == true)
            {
                PassSwitch(false);
                Speak("OK. What do you want next?");
                nState = STATE_ASK;
                // nState = STATE_WAIT;
            }
        }
	cout << "当前处于将物品给主人状态 "  << endl;
}

void wait(int num)
{
	if (nState == STATE_WAIT)
        {
            int count = 0;
            if (in.is_open())
            { 
                if (!in.eof())
                {
                    char buffer[20];
                    in >> buffer;
                    if (buffer[0] == '1' && count == 0)
                    {
                        nState = STATE_FOLLOW;
                        Speak("SLAM ON");
                        ROS_WARN("SLAM ON");          
                        count++;              
                    }
                    else if (buffer[0] == '2')
                    {
                        nState = STATE_ASK;
                        Speak("OK. What do you want me to fetch?");
                        ROS_WARN("ASK");
                    }
                }    
            }
	cout << " 当前处于等待状态"  << endl;
}

int main( int argc, char** argv)
{
	int num;
	cout<<"输入一个0-7的数：";
	cin >>num;
	
	if(num==0) ready(num);
	else if(num==1) follow(num);
	else if(num==2) ask(num);
	else if(num==3) gotos(num);
	else if(num==4) grab(num);
	else if(num==5) comeback(num);
	else if(num==6) pass(num);
	else if(num==7) wait(num);
	else cout << "输入的数字不符合要求 "  << endl;
}
