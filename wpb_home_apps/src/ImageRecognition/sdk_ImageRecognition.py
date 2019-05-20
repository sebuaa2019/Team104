from qcloud_image import Client
from qcloud_image import CIUrl, CIFile


keywords = ['水果', '瓶子']
keywords_eng = ['fruit', 'bottle']

def get_tags(path='image.jpg'):
    appid = "1257930116"
    secret_id = "AKIDnnrleN566ApPzgpM8mU7rU6tkeWQnayI"
    secret_key = "X4Z8sc2HYgw4AKWer162tgcYZemv3HNN"
    bucket = 'BUCKET'
    client = Client(appid, secret_id, secret_key, bucket)
    client.use_http()
    client.set_timeout(100)
    
    res = client.tag_detect(CIFile(path))
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
            
def get_labels(path='image.jpg'):
    tags = get_tags(path)
    if tags is None:
        return
    labels = []
    for tag in tags:
        label = tag['tag_name']
        labels.append(label)

    for i in range(len(keywords)):
        if keywords[i] in labels:
            print(keywords_eng[i], end='')
            return
    print('Error: Unexpected object')
    

if __name__ == '__main__':
    path = '/home/robot/images/image.bmp'
    get_label(path)
