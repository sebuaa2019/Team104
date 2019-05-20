import os
import commands
from os.path import join as pjoin


def change_status(status):
    path = pjoin('/', 'home', 'robot')
    with open(path, 'w') as file:
        file.write(status)

def main():
    print('New status?')
    print('1. SLAM')
    print('2. ASK')
    option = input()
    if option == '1' or option == '2':
        change_status(option)
