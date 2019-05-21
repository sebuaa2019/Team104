#include <fstream>
#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#define time_start 1000000
#define time_stop 1000000
using namespace std;
void vel_forward(int argc, char** argv);
void vel_backward(int argc, char** argv);
void vel_left(int argc, char** argv);
void vel_right(int argc, char** argv);
void vel_turnleft(int argc, char** argv);
void vel_turnright(int argc, char** argv);
int main(){
	int num;
	int argc;
	char** argv;
	while(1){
		fstream file("/home/robot/team104_temp/movement.txt",ios::in);
		if(file.is_open()){
			file>>num;
			file.close();
		}
		if(num==0){
			vel_forward(argc,argv);
		}
		else if(number==1){
			vel_backward(argc,argv);
		}
		else if(number==2){
			vel_left(argc,argv);
		}
		else if(number==3){
			vel_right(argc,argv);
		}
		else if(number==4){
			vel_turnleft(argc,argv);
		}
		else if(number==5){
			vel_turnright(argc,argv);
		}
		else{
			continue;
		}		
		fstream file1("/home/robot/team104_temp/movement.txt",ios::out);
		if(file1.is_open()){
			file1<<6;
			file1.close();
			}
		}
	}
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
