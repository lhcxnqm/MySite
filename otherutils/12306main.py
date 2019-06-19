import requests
import time
import re

headers = {
    "User-Agent": "Mozilla/5.0"
}

class Main:
    def __init__(self):
        self.session = requests.session()

    def verifyCheck(self):
        url = 'https://kyfw.12306.cn/passport/captcha/captcha-image?login_site=E&module=login&rand=sjrand'
        result = self.session.get(url)
        with open('verify.png','wb') as f:
            f.write(result.content)

        code = input('请输入验证码：')
        data = {
            'answer': code,
            'login_site': 'E',
            'rand': 'sjrand'
        }
        url = 'https://kyfw.12306.cn/passport/captcha/captcha-check'
        response = self.session.post(url,data=data)
        result = response.json()
        print(result)

    def login(self):

        # 验证码验证---------------------------------------------
        self.verifyCheck()

        # 账号登录-----------------------------------------------
        url = 'https://kyfw.12306.cn/passport/web/login'
        data = {
            'username': '18867741831',
            'password': 'asd134679',
            'appid': 'otn'
        }
        response = self.session.post(url=url, data=data,headers=headers,verify=False)
        print(response.text)


if __name__ == '__main__':
    start = Main()
    start.login()