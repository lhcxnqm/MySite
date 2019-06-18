import json
import requests

total = []

def getJson(year,month):
    url = 'http://www.1905.com/api/content/index.php'
    headers = {
        'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) '
                     'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36'
    }
    parameters = {
        'callback': 'reloadList',
        'm': 'converged',
        'a': 'info',
        'type': 'jryp',
        'year': year,
        'month': month
    }

    response = requests.get(url,headers=headers,params=parameters,timeout=5)
    #转换为字典格式
    result = response.text.replace('reloadList(','').replace(')','')
    result = json.loads(result)
    if month < 10:
        month = '0' + str(month)
    for i in result['info']:
        movie = {}
        movie['url'],movie['title'],movie['thumb'],movie['airtime'] = i['url'],i['title'],i['thumb'],i['airtime']
        total.append(movie)

        # #不需要下载图片的时候注释掉
        # with open(r'D:\picture\%s-%s-%s.jpg' % (year,month,movie['airtime'][-3:-1]),'wb') as f:
        #     image = requests.get(i['thumb']).content
        #     f.write(image)

def getMovie():
    #获得2019年1-5月的电影
    for month in range(1,6):
        getJson('2019',month)
    return total