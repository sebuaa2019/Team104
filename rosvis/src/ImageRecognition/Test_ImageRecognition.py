import sys
import unittest
import os
from sdk_ImageRecognition import ImageRecognition
from PIL import Image

# Test Result
# Process finished with exit code 0
# Ran 5 tests in 15.196s
#
# OK


class MyTest(unittest.TestCase):  # 继承unittest.TestCase

    # 图像识别腾讯云API测试
    def test_get_tags(self):
        image_filename = 'unknown.jpg'
        folder = '/home/shuai/workspace/SyncProjects/Team104/rosvis/src/ImageRecognition/test_images'
        ir_unknown = ImageRecognition(folder, image_filename)
        tags = ir_unknown.get_tags(ir_unknown.path)
        print(tags)
        self.assertTrue(type(tags) is list)
        self.assertTrue(len(tags) > 0)
        for tag in tags:
            print(type(tag['tag_name']))
            self.assertTrue(type(tag['tag_name']) == str)
            self.assertTrue(len(tag['tag_name']) > 0)
            self.assertTrue(type(tag['tag_confidence']) == int)
            self.assertTrue(0 < tag['tag_confidence'] <= 100)

        labels, _ = ir_unknown.get_labels(ir_unknown.path)
        self.assertEqual(len(labels), 0)

    # 图像识别腾讯云API解析测试，以及图像识别结果准确性测试
    def test_get_label(self):
        image_filename = 'unknown.jpg'
        folder = '/home/shuai/workspace/SyncProjects/Team104/rosvis/src/ImageRecognition/test_images'
        ir_unknown = ImageRecognition(folder, image_filename)
        labels, _ = ir_unknown.get_labels(ir_unknown.path)
        print(labels)
        self.assertEqual(len(labels), 0)

        image_filename = 'not_exist.jpg'
        ir_not_exist = ImageRecognition(folder, image_filename)
        labels, _ = ir_not_exist.get_labels(ir_not_exist.path)
        print(labels)
        self.assertEqual(labels, None)

        image_filename = 'bottle.jpg'
        ir_bottle = ImageRecognition(folder, image_filename)
        labels, _ = ir_bottle.get_labels(ir_bottle.path)
        print(labels)
        self.assertEqual(len(labels), 1)
        self.assertEqual(labels[0], 'Bottle')

        image_filename = 'fruit.jpg'
        ir_fruit = ImageRecognition(folder, image_filename)
        labels, _ = ir_fruit.get_labels(ir_fruit.path)
        print(labels)
        self.assertEqual(len(labels), 1)
        self.assertEqual(labels[0], 'Fruit')

    def test_image_partition(self):
        image_filename = 'fruit.jpg'
        folder = '/home/shuai/workspace/SyncProjects/Team104/rosvis/src/ImageRecognition/test_images'
        ir = ImageRecognition(folder, image_filename)
        res_files = ir.image_partition()
        files = os.listdir(folder)
        print(res_files)
        print(files)
        for res_file in res_files:
            self.assertTrue(os.path.basename(res_file) in files)
            image = Image.open(ir.path)
            piece_width = image.size[0] // 3
            piece_height = image.size[1] // 3

            cut_image = Image.open(res_file)
            cut_width = cut_image.size[0]
            cut_height = cut_image.size[1]

            self.assertEqual(piece_width, cut_width)
            self.assertEqual(piece_height, cut_height)

    def test_return_res(self):
        image_filename = 'fruit.jpg'
        folder = '/home/shuai/workspace/SyncProjects/Team104/rosvis/src/ImageRecognition/test_images'
        ir = ImageRecognition(folder, image_filename)
        ir.return_res('UnitTest')

        filename = os.path.join(folder, 'IR_res.txt')
        with open(filename, 'r') as file:
            res = file.read()
        self.assertEqual(res, 'UnitTest')

    def test_call(self):
        image_filename = 'unknown.jpg'
        folder = '/home/shuai/workspace/SyncProjects/Team104/rosvis/src/ImageRecognition/test_images'
        ir_unknown = ImageRecognition(folder, image_filename)
        ir_unknown()
        with open(os.path.join(folder, 'IR_res.txt'), 'r') as file:
            res = file.read()
        self.assertEqual(res, 'Unknown')

        image_filename = 'not_exist.jpg'
        ir_not_exist = ImageRecognition(folder, image_filename)
        ir_not_exist()
        with open(os.path.join(folder, 'IR_res.txt'), 'r') as file:
            res = file.read()
        self.assertEqual(res, 'Unknown')

        image_filename = 'bottle.jpg'
        ir_bottle = ImageRecognition(folder, image_filename)
        ir_bottle()
        with open(os.path.join(folder, 'IR_res.txt'), 'r') as file:
            res = file.read()
        self.assertEqual(res, 'Bottle')

        image_filename = 'fruit.jpg'
        ir_fruit = ImageRecognition(folder, image_filename)
        ir_fruit()
        with open(os.path.join(folder, 'IR_res.txt'), 'r') as file:
            res = file.read()
        self.assertEqual(res, 'Fruit')


if __name__ == '__main__':
    unittest.main()  # 运行所有的测试用例

# def API_test():
#     print('Test for API and image recognition:')
#
#     print('\nTest1 [Bottle]:')
#     img_name = 'bottle.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     ret = sdk_ImageRecognition.get_tags(path)
#     print('Ret:\t{}'.format(ret))
#
#     print('\nTest2 [Fruit]:')
#     img_name = 'fruit.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     ret = sdk_ImageRecognition.get_tags(path)
#     print('Ret:\t{}'.format(ret))
#
#     print('\nTest3 [Unexpected]:')
#     img_name = 'unknown.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     ret = sdk_ImageRecognition.get_tags(path)
#     print('Ret:\t{}'.format(ret))
#
#     print('\nTest4 [Not exist]:')
#     img_name = 'not_exist.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     ret = sdk_ImageRecognition.get_tags(path)
#     print('Ret:\t{}'.format(ret))
#
#
# def json_extract_test():
#     print('Test for return json file extracting:')
#
#     print('\nTest1 [Bottle]:')
#     img_name = 'bottle.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     sdk_ImageRecognition.get_labels(path)
#
#     print('\nTest2 [Fruit]:')
#     img_name = 'fruit.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     sdk_ImageRecognition.get_labels(path)
#
#     print('\nTest3 [Unexpected]:')
#     img_name = 'unknown.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     sdk_ImageRecognition.get_labels(path)
#
#     print('\nTest4 [Not exist]:')
#     img_name = 'not_exist.jpg'
#     path = pjoin('..', 'ImageRecognition', img_name)
#     sdk_ImageRecognition.get_labels(path)
#
#
# if __name__ == '__main__':
#     # API_test()
#     json_extract_test()