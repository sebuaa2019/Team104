#include <ros/ros.h> 
#include <std_msgs/String.h>
#include <vector>
#include "action_manager.h"
#include <sound_play/SoundRequest.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <waterplus_map_tools/GetWaypointByName.h>

using namespace std;

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
static ros::Publisher spk_pub;
static CActionManager action_manager;
static ros::ServiceClient cliGetWPName;
static waterplus_map_tools::GetWaypointByName srvName;


// 初始化航点遍历脚本 
static vector<string> arWaypoint;
static int nWaypointIndex = 0;
static void Init_waypoints()
{
    arWaypoint.push_back("1");
    arWaypoint.push_back("2");
    arWaypoint.push_back("3");
    arWaypoint.push_back("4");
    arWaypoint.push_back("5");
    arWaypoint.push_back("6");
    arWaypoint.push_back("7");
    arWaypoint.push_back("8");
    arWaypoint.push_back("9");
    arWaypoint.push_back("10");
    arWaypoint.push_back("11");
    arWaypoint.push_back("12");
}

static void Speak(string inStr)
{
    sound_play::SoundRequest sp;
    sp.sound = sound_play::SoundRequest::SAY;
    sp.command = sound_play::SoundRequest::PLAY_ONCE;
    sp.arg = inStr;
    spk_pub.publish(sp);
}


///////////////////////////////////////////////////
static int instr = 0;
///////////////////////////////////////////////////

int main(int argc, char** argv)
{
    ros::init(argc, argv, "wpb_home_path_plan");
    Init_waypoints();
    action_manager.Init();

    ros::NodeHandle n;
    cliGetWPName = n.serviceClient<waterplus_map_tools::GetWaypointByName>("/waterplus/get_waypoint_name");
    spk_pub = n.advertise<sound_play::SoundRequest>("/robotsound", 20);

    string strGoto;
    ROS_INFO("[main] wpb_home_path_plan");
    ros::Rate r(10);
    while(ros::ok())
    {
	sleep(1);
	Speak("I am okay.");
	sleep(2);
    Speak("start go.");
	sleep(2);
            // 正式的航点遍历脚本
            ///////////////////////////////////////////////////
            //cin >> instr;
	    FILE *f_in;
	    while(true){
		if((f_in = fopen("/home/robot/point.txt","r"))==NULL){
			//Speak("idiot");
			sleep(2);
			continue;
		}
		//Speak("hello");	
		char ls[10];
		int ls_int;
		fgets(ls,10,f_in);
		instr = atoi(ls);
		//Speak(ls);
		fclose(f_in);
		if(instr == 0){
			sleep(2);
			continue;
		} 
		break;
	    }
	    //Speak("yes.");
			//在文件/home/robot路径下,point.txt
			/*FILE *f_in = fopen("/home/robot/point.txt","w");
			string ls;
			int ls_int;
			gets(ls);
			instr = atoi(ls);*/
			// 
            //cout << instr << endl;
            ///////////////////////////////////////////////////
			int nNumWayponts = arWaypoint.size();
                       /* if(instr == 0){
                        	Speak("I am done.");
                                sleep(2);
                        	ros::spinOnce();
							break;
                        }*/
                        if(instr-1 < nNumWayponts && instr>0)
                        {
                            // 航点未遍历完，继续下一个航点
                            strGoto = arWaypoint[instr-1];//[nWaypointIndex];
                            ///////////////////////////////////////////////////
                            //nWaypointIndex ++;
                        }
                        else
                        {
                            // 航点遍历完成，结束
                            Speak("This is a wrong point.");
			    sleep(2);
                            ros::spinOnce();
							continue;
                        }
            srvName.request.name = strGoto;
	
            if (cliGetWPName.call(srvName))
            {
                std::string name = srvName.response.name;

                float x = srvName.response.pose.position.x;
                float y = srvName.response.pose.position.y;
                //ROS_INFO("Get_wp_name: name = %s (%.2f,%.2f)", strGoto.c_str(),x,y);

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
                    ac.sendGoal(goal);////////////////////////////
                    ac.waitForResult();//waiting for arriving to the goal

                    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
                    {
                        ROS_INFO("Arrived at %s!",strGoto.c_str());
                        //到达"start"航点,开始执行航点遍历脚本
                        string strSpeak = "I have got to waypoint " + strGoto;
                        Speak(strSpeak);
                        ros::spinOnce();
                        sleep(3);

                        
                    }
                    else
                        ROS_INFO("Failed to get to %s ...",strGoto.c_str() );
                }
                
            }
            else
            {
                ROS_ERROR("Failed to call service GetWaypointByName");
            }
			
			//删除point.txt文件内容
			remove("/home/robot/point.txt");
        ros::spinOnce();
        r.sleep();
    }

    return 0;
}
