# Beihang University SE - Team104
## Project Summary
ROSVIS - Simple ROS Robot Visualization


##Environment Setup
1. $ sudo apt-get install ros-indigo-qt-create
2. $ sudo apt-get install ros-indigo-qt-build
3. Copy rosvis folder to catkin_ws/src/

##How to Run
1. cd /catkin_ws/src
2. catkin_make
3. rosrun rosvis rosvis

##How things work
###Choose user type
#### Admin
- Control the robot around with the buttons
- Movement Id will be printed to a temp file
- Image will be exported to a temp file and refreshed every 0.1 seconds

#### Normal User
- Click on the product for the robot to navigate to the item
- Clicking the button will print the robot status id to a temp file

##Temp Files
For movement: movement.txt
For status  : status.txt
For image   : image.bmp
1. /home/{username}/team104_temp/

