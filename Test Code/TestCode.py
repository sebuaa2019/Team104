import sys
import subprocess

#subprocess.call("roslaunch wpb_home_bringup minimal.launch", shell=True)
print("Running ROS package")

try:
    while True:
        command = input("Input your command: ")
        if(command == "UP" or command == "up" or command == "Up"):
            #subprocess.call("rosrun my_vel_package vel_forward")
            print("Robot is moving Forward with speed 0.1 m/s")
        elif (command == "DOWN" or command == "down" or command == "Down"):
            #subprocess.call("rosrun my_vel_package vel_backward")
            print("Robot is moving Backward with speed 0.1 m/s")
        elif (command == "RIGHT" or command == "right" or command == "Right"):
            #subprocess.call("rosrun my_vel_package vel_right")
            print("Robot is moving Right with speed 0.1 m/s")
        elif (command == "LEFT" or command == "left" or command == "Left"):
            #subprocess.call("rosrun my_vel_package vel_left")
            print("Robot is moving Left with speed 0.1 m/s")
        elif (command == "TURNLEFT" or command == "turnleft" or command == "Turnleft"):
            #subprocess.call("rosrun my_vel_package vel_turnleft")
            print("Robot is Turning Left with speed 0.1 m/s")
        elif (command == "TURNRIGHT" or command == "turnright" or command == "Turnright"):
            #subprocess.call("rosrun my_vel_package vel_turnright")
            print("Robot is Turning Right with speed 0.1 m/s")
        else:
            print("Wrong Command")
except KeyboardInterrupt:
    sys.exit()

