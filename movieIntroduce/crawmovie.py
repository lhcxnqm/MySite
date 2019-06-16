import requests
from bs4 import BeautifulSoup

def getMovie():
    url = 'https://movie.douban.com/chart'
    html = requests.get(url, timeout=10)
    soup = BeautifulSoup(html.text, 'html.parser')
    content = soup.find('div', class_='indent').find_all('table')

    title, introduce, score, image = [], [], [], []

    for each in content:
        #电影图片
        temp = each.find('img',attrs={'src':True}).get('src')
        image.append(temp)
        # 电影名称
        temp = each.find('div',class_='pl2')
        title.append(temp.a.text.replace(' ',''))
        #电影简介
        introduce.append(temp.p.text.strip())
        #电影评分
        temp = temp.find('span',class_='rating_nums')
        score.append(temp.text.strip())

    return title,introduce,score,image

'''用来获取图片
if __name__ == '__main__':
    (title,introduce,score,image) = getMovie()
    for i in range(len(image)):
        with open(r'D:\picture\%s.jpg' % i,'wb') as f:
            response = requests.get(image[i])
            f.write(response.content)

    print('success')
'''