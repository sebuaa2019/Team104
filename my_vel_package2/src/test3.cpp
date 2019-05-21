#include <ros/ros.h>
#include <stdlib.h>
#include <time.h>
#include <geometry_msgs/Twist.h>

using namespace std;

clock_t pre_time,post_time;

int main(int argc, char** argv)
{
    ros::init(argc, argv, "test3");
    ros::NodeHandle n;
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    
    pre_time = clock();
    int flag = 1;
    while(ros::ok() && flag)
    {
	    post_time = clock();
	    if(post_time > (pre_time + 1500))
	    	flag = 0;
        geometry_msgs::Twist vel_cmd;

        vel_cmd.linear.x = 0.1;        
        vel_cmd.linear.y = 0;
        vel_cmd.linear.z = 0;
        
        vel_cmd.angular.x = 0;
        vel_cmd.angular.y = 0;
        vel_cmd.angular.z = 0;

        vel_pub.publish(vel_cmd);
	
        ros::spinOnce();
    }
}
