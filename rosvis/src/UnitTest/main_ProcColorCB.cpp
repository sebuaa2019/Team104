#include <ros/ros.h>
#include <std_msgs/String.h>
#include "wpb_home_tutorials/Follow.h"
#include <geometry_msgs/Twist.h>
#include "xfyun_waterplus/IATSwitch.h"
#include <sound_play/SoundRequest.h>
#include "wpb_home_tutorials/Follow.h"
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <waterplus_map_tools/Waypoint.h>
#include <waterplus_map_tools/GetWaypointByName.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PoseStamped.h>

#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/imgproc/imgproc.hpp"

#include <cstdlib>
#include <string>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <algorithm>
#include <fstream>

#include <unistd.h>
#include <assert.h>

using namespace std;


void ProcColorCB(const sensor_msgs::ImageConstPtr& msg)
{
    ROS_INFO("ProcColorCB");
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
        cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }
    bool res = imwrite("/home/robot/team104_temp/image.bmp",cv_ptr->image);
    assert(res)
}


int main(int argc, char** argv)
{
    startGUI(argc, argv);
    ros::init(argc, argv, "wpb_home_shopping");

    ros::NodeHandle n;
    ros::Subscriber rgb_sub = n.subscribe("/kinect2/qhd/image_color", 1 , ProcColorCB);

    ROS_WARN("ProcColorCB Test");
    ros::Rate r(30);
    
    if (ros::ok())
    {
        sleep(1);

        FILE* python_exec = popen("python3 /home/robot/catkin_ws/src/wpb_home_apps/src/ImageRecognition/sdk_ImageRecognition.py", "r");
        char bash_output[1024]; //设置一个合适的长度，以存储每一行输出

        fgets(bash_output, sizeof(bash_output), python_exec);
        string bash_outstr(bash_output);
        assert(bash_outstr == "1")
        cout << "Pass" << endl;
    }

    return 0;
}
