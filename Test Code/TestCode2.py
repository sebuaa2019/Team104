import sys
import subprocess
import time
#subprocess.call("roslaunch wpb_home_bringup minimal.launch", shell=True)
print("Running ROS package")
testTime = int(input("Time to test: "))
t_end = time.time() + testTime
try:
    while time.time() < t_end:
        command = "up"
        if(command == "up"):
            #subprocess.call("rosrun my_vel_package vel_forward")
            print("command is: ", command)
            print("Robot is moving Forward with speed 0.1 m/s")
            time.sleep(2.0)

        command = "down"
        if (command == "DOWN" or command == "down" or command == "Down"):
            #subprocess.call("rosrun my_vel_package vel_backward")
            print("command is: ", command)
            print("Robot is moving Backward with speed 0.1 m/s")
            time.sleep(2.0)

        command = "right"
        if (command == "right"):
            #subprocess.call("rosrun my_vel_package vel_right")
            print("command is: ", command)
            print("Robot is moving Right with speed 0.1 m/s")
            time.sleep(2.0)
        command = "left"
        if (command == "left"):
            #subprocess.call("rosrun my_vel_package vel_left")
            print("command is: ", command)
            print("Robot is moving Left with speed 0.1 m/s")
            time.sleep(2.0)

        command = "turnleft"
        if (command == "turnleft"):
            #subprocess.call("rosrun my_vel_package vel_turnleft")
            print("command is: ", command)
            print("Robot is Turning Left with speed 0.1 m/s")
            time.sleep(2.0)

        command = "turnright"
        if (command == "turnright"):
            #subprocess.call("rosrun my_vel_package vel_turnright")
            print("command is: ", command)
            print("Robot is Turning Right with speed 0.1 m/s")
            time.sleep(2.0)

except KeyboardInterrupt:
    sys.exit()

