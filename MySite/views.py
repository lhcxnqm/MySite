from django.shortcuts import render,redirect
from MyStatistics.utils import get_seven_days_read_data
from django.contrib.contenttypes.models import ContentType
from blog.models import Blog,BlogType
from django.contrib import auth
from .forms import LoginForm,RegisterForm
from django.contrib.auth.models import User

#主页控制
def mysite(request):
    #博客阅读数量统计
    blog_content_type=ContentType.objects.get_for_model(Blog)
    read_nums,dates=get_seven_days_read_data(blog_content_type)

    #博文分类
    blog_type = BlogType.objects

    #头条滚动栏博客，显示前四篇热门文章，按照浏览量排序
    blog_list = Blog.objects.all()[:5]

    data = {}
    data['read_nums'] = read_nums
    data['dates'] = dates
    data['blog_type'] = blog_type
    data['blog_list'] = blog_list
    return render(request,"index.html",data)

#登录处理
def login(request):
    if request.method=='POST':
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user=login_form.cleaned_data['user']
            auth.login(request,user)
            return redirect(request.GET.get('from'))    # 登陆成功则返回到原来的文章页面
    else:
        login_form=LoginForm()

    return render(request,"login.html",{'login_form':login_form})

#注册处理
def register(request):
    if request.method=='POST':
        register_form=RegisterForm(request.POST)
        if register_form.is_valid():
            username=register_form.cleaned_data['username']
            email=register_form.cleaned_data['email']
            password=register_form.cleaned_data['password']
            user=User.objects.create_user(username,email,password)
            user.save()
            #注册成功后进行登录
            user=auth.authenticate(username=username,password=password)
            auth.login(request,user)
            return redirect(request.GET.get('from'))
    else:
        register_form=RegisterForm()

    return render(request,'register.html',{'register_form':register_form})

#用户退出
def logout(request):
    auth.logout(request)
    return redirect(request.GET.get('from'))