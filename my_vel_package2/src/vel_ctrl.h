#ifndef VEL_CTRL_H
#definr VEL_CTRL_H

#include <fstream>
#include <iostream>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#define time_start 1000000
#define time_stop 1000000
void vel_forward(int argc, char** argv);
void vel_backward(int argc, char** argv);
void vel_left(int argc, char** argv);
void vel_right(int argc, char** argv);
void vel_turnleft(int argc, char** argv);
void vel_turnright(int argc, char** argv);

#endif
