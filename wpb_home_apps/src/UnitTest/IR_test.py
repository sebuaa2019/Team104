import sys
from os.path import join as pjoin

path = pjoin('..', 'ImageRecognition')
sys.path.append(path)
import sdk_ImageRecognition


def API_test():
    print('Test for API and image recognition:')
    
    print('\nTest1 [Bottle]:')
    img_name = 'bottle.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    ret = sdk_ImageRecognition.get_tags(path)
    print('Ret:\t{}'.format(ret))

    print('\nTest2 [Fruit]:')
    img_name = 'fruit.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    ret = sdk_ImageRecognition.get_tags(path)
    print('Ret:\t{}'.format(ret))

    print('\nTest3 [Unexpected]:')
    img_name = 'unknown.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    ret = sdk_ImageRecognition.get_tags(path)
    print('Ret:\t{}'.format(ret))

    print('\nTest4 [Not exist]:')
    img_name = 'not_exist.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    ret = sdk_ImageRecognition.get_tags(path)
    print('Ret:\t{}'.format(ret))


def json_extract_test():
    print('Test for return json file extracting:')
    
    print('\nTest1 [Bottle]:')
    img_name = 'bottle.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    sdk_ImageRecognition.get_labels(path)

    print('\nTest2 [Fruit]:')
    img_name = 'fruit.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    sdk_ImageRecognition.get_labels(path)

    print('\nTest3 [Unexpected]:')
    img_name = 'unknown.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    sdk_ImageRecognition.get_labels(path)

    print('\nTest4 [Not exist]:')
    img_name = 'not_exist.jpg'
    path = pjoin('..', 'ImageRecognition', img_name)
    sdk_ImageRecognition.get_labels(path)


if __name__ == '__main__':
    # API_test()
    json_extract_test()