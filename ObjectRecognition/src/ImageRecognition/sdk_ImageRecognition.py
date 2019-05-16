from qcloud_image import Client
from qcloud_image import CIUrl, CIFile


def get_label(path='image.jpg'):
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
            print('ERROR')
            
    labels = []
    for tag in tags:
        label = tag['tag_name']
        labels.append(label)
    
    keywords = ['水果']
    keywords_eng = ['fruit']
    for i in range(len(keywords)):
        if keywords[i] in labels:
            print(keywords_eng[i])
            return
    print('Unexpected object')
    

if __name__ == '__main__':
    path = '/home/images/image.jpg'
    get_label(path)
