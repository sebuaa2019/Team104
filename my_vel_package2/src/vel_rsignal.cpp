#include <fstream>
#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#define time_start 1000000
#define time_stop 1000000
using namespace std;
void vel_foward(int argc, char** argv);
void vel_backward(int argc, char** argv);
void vel_left(int argc, char** argv);
void vel_right(int argc, char** argv);
void vel_turnleft(int argc, char** argv);
void vel_turnright(int argc, char** argv);
int main(){
	string chengxu;
	char *p;
	char ch;
	int argc;
	char** argv;
	fstream file("/home/robot/team104_temp/movement.txt",ios::in);
	if(file.is_open()){
		file.seekg(0, ios::end);
			chengxu.resize(file.tellg());
			file.seekg(0, ios::beg);
			file.read(&chengxu[0], chengxu.size());
			file.close();
	}
	p = &chengxu[0];
	ch = *p;
	switch(ch){
		case 0:vel_forward(argc,argv);
		case 1:vel_backward(argc,argv);
		case 2:vel_left(argc,argv);
		case 3:vel_right(argc,argv);
		case 4:vel_turnleft(argc,argv);
		case 5:vel_turnright(argc,argv);
	}
	return 0;
}
int times;
void vel_forward(int argc, char** argv)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    times = time_start; 
    while(ros::ok() && times)
    {
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0.1;
        vel_cmd.linear.y = 0;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
         times--;
        ros::spinOnce();
    }
}
void vel_backward(int argc, char** argv)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    times = time_start; 
    while(ros::ok() && times)
    {
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = -0.1;
        vel_cmd.linear.y = 0;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
         times--;
        ros::spinOnce();
    }
}
void vel_left(int argc, char** argv)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    times = time_start; 
    while(ros::ok() && times)
    {
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0;
        vel_cmd.linear.y = 0.1;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
         times--;
        ros::spinOnce();
    }
}
void vel_right(int argc, char** argv)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    times = time_start; 
    while(ros::ok() && times)
    {
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0;
        vel_cmd.linear.y = -0.1;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
         times--;
        ros::spinOnce();
    }
}
void vel_turnleft(int argc, char** argv)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    times = time_start; 
    while(ros::ok() && times)
    {
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0;
        vel_cmd.linear.y = 0;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0.1;

        vel_pub.publish(vel_cmd);
         times--;
        ros::spinOnce();
    }
}
void vel_turnright(int argc, char** argv)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    times = time_start; 
    while(ros::ok() && times)
    {
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0;
        vel_cmd.linear.y = 0;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = -0.1;

        vel_pub.publish(vel_cmd);
         times--;
        ros::spinOnce();
    }
}
