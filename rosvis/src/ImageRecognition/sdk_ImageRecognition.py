from PIL import Image
from os.path import join as pjoin

from qcloud_image import Client
from qcloud_image import CIUrl, CIFile


keywords = ['水果', '瓶子']
keywords_eng = ['Fruit', 'Bottle']


class ImageRecognition:
    def __init__(self, in_folder, in_filename):
        self.folder = in_folder
        self.filename = in_filename
        self.path = pjoin(self.folder, self.filename)

    def get_tags(self, path=None):
        appid = "1257930116"
        secret_id = "AKIDMXTCQT2n9rgJiape1HNiSdFgZHsSDR8d"
        secret_key = "RhFg4TwPkR5Zs362udyFSVVmySvRk1GQ"
        bucket = 'BUCKET'
        client = Client(appid, secret_id, secret_key, bucket)
        client.use_http()
        client.set_timeout(100)

        res = client.tag_detect(CIFile(path))
        # print(res)
        try:
            tags = res['tags']
        except KeyError:
            try:
                res = client.tag_detect(CIFile(path))
                tags = res['tags']
            except KeyError:
                print('Error {}: {}'.format(res['code'], res['message']))
                return None
        return tags

    def get_labels(self, path=None):
        tags = self.get_tags(path)
        # print(tags)
        if tags is None:
            return
        labels = []
        for tag in tags:
            label = tag['tag_name']
            if label in keywords:
                index = keywords.index(label)
                labels.append(keywords_eng[index])
        return labels, tags

    def image_partition(self):
        filenames = []
        for i in range(9):
            image = Image.open(self.path)

            width = image.size[0]
            height = image.size[1]
            piece_width = width // 3
            piece_height = height // 3
            x = 0
            y = 0
            count = 0

            while x + piece_width <= width:
                while y + piece_height <= height:
                    filename = pjoin(self.folder, 'image_{}.jpg'.format(count))
                    # print n,x1,y1,x2,y2
                    piece = image.crop((y, x, y+piece_height, x+piece_width))
                    piece.save(filename)
                    filenames.append(filename)
                    y += piece_height
                    count += 1
                x += piece_width
                y = 0

        return filenames

    def return_res(self, result):
        filename = pjoin(self.folder, 'IR_res.txt')
        with open(filename, 'w') as file:
            file.writelines(result)

    def __call__(self):
        labels, tags = self.get_labels(self.path)
        print(labels)
        if len(labels) > 0:
            # print(labels[0], end='')
            self.return_res(labels[0])
        else:
            filenames = self.image_partition()
            for i in range(len(filenames)):
                filename = filenames[i]
                labels, _ = self.get_labels(filename)
                print(i, labels)
                if len(labels) != 0:
                    # print(labels[0], end='')
                    self.return_res(labels[0])
                    return
            print(tags)
            self.return_res('Unknown')
    

if __name__ == '__main__':
    image_filename = 'image.bmp'
    folder = pjoin('/home/', 'robot', 'team104_temp', image_filename)
    # image_filename = 'bottle.jpg'
    # folder = pjoin('./')
    ir = ImageRecognition(folder, image_filename)
    ir()
    # print(ir.image_partition())
