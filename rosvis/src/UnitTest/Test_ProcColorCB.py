from PIL import Image
from os.path import join as pjoin
import os
import time

def test_ProcColorCB(path):
    file_info = os.stat(path)
    modified_time = file_info.st_mtime
    cur_time = time.time()
    time_diff = cur_time - modified_time
    if time_diff > 30:
        return False

    try:
        image = Image.open(path)
    except:
        return False

    width = image.size[0]
    height = image.size[1]
    if width != 960 or height != 540:
    	return False

    return True


if __name__ == '__main__':
	path = pjoin('/home', 'robot', 'team104_temp', 'image.bmp')
	print(test_ProcColorCB(path))
