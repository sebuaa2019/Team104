#include <ros/ros.h>
#include <ctime>
#include <time.h>
#include <stdlib.h>
#include <geometry_msgs/Twist.h>

using namespace std;
clock_t post_time, pre_time;

void move_x(int argc, char** argv, int flag);
void move_y(int argc, char** argv, int flag);
void move_z(int argc, char** argv, int flag);

int main(int argc, char** argv)
{

	    move_x(argc,argv,1);
        move_x(argc,argv,0);    //fan fangxiang
	    move_y(argc,argv,1);
        move_y(argc,argv,0);    //fan fangxiang
	    move_z(argc,argv,1);
        move_z(argc,argv,0);    //fan fangxiang
	
    return 0;
}
void move_x(int argc, char** argv,int flag)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    
    pre_time = clock();

    while(ros::ok())
    {
	    post_time = clock();
		if (post_time - pre_time >= 1000)
			break;
        geometry_msgs::Twist vel_cmd;

        if(flag)
            vel_cmd.linear.x = 0.1;
        else
            vel_cmd.linear.x = -0.1;

        vel_cmd.linear.y = 0;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
	
        ros::spinOnce();
    }
}

void move_y(int argc, char** argv,int flag)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    pre_time = clock();

    while(ros::ok())
    {
		post_time = clock();
		if (post_time - pre_time >= 1000)
			break;
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0;

        if(flag)
            vel_cmd.linear.y = 0.1;
        else
            vel_cmd.linear.y = -0.1;

        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
	
        ros::spinOnce();
    }
}
void move_z(int argc, char** argv,int flag)
{
    ros::init(argc, argv, "vel_ctrl");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    pre_time = clock();

    while(ros::ok())
    {
		post_time = clock();
		if (post_time - pre_time >= 1000)
			break;
        geometry_msgs::Twist vel_cmd;
        vel_cmd.linear.x = 0;
        vel_cmd.linear.y = 0;

        if(flag)
            vel_cmd.linear.z = 0.1;
        else
            vel_cmd.linear.z = 0.1;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
	
        ros::spinOnce();
    }
}
