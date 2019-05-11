# Beihang University SE - Team104
## Project Summary
Simple Robot based on ROS

Hardware: 
* Embedded system development board
* Various types of sensors
* Motion devices
* Mechanical arm devices

Target machine software:
* Embedded operating system: LINUX system
* Development language: C/C++/Python

Features:
* Support ROS development
* Binocular sensor
* Indoor navigation

## Milestones
* (2019-3-10) Project Design Document
* (2019-3-31) Project Requirements Analysis Document
* (2019-4-02) Project Requirements Review
* (2019-4-21) Software Requirements Analysis/Design Document
* (2019-4-23) Software Requirements Analysis/Design Review
* (2019-5-14) Code Review
* (2019-6-04) Testing Document Review 1
* (2019-6-11) Testing Document Review 2
* (2019-6-18) End of Lesson

## Meeting Summary
### 4月23日

当前分工：
* 刘逸：		物品抓取
* 于金泽：	语音识别
* 周美廷：	GUI，数据库
* 马力：		导航，SLAM，路径规划
* 张金源：	导航，SLAM，路径规划

流程图：
* 重新规划流程图并加上物品抓取功能
* 考虑如何处理突然出现障碍（停止等待或绕开）
* 添加语音识别功能

数据库设计：
加上数据库模块用来存储物品和地图信息，使用机器人时会调用数据库的信息
需要存的信息：
* 用户信息
* 地图
* 日志
* 物品信息
* 关键词

类图重画

任务：
* 4月25日完成类图和相关内容填写
* 安装Ubuntu和ROS系统
* 4月26日7点开会