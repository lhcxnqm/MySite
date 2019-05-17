from django.shortcuts import render,redirect
from MyStatistics.utils import get_seven_days_read_data
from django.contrib.contenttypes.models import ContentType
from blog.models import Blog
from django.contrib import auth

def mysite(request):
    blog_content_type=ContentType.objects.get_for_model(Blog)
    read_nums,dates=get_seven_days_read_data(blog_content_type)

    return render(request,"index.html",{'read_nums':read_nums,'dates':dates})

def login(request):
    username=request.POST.get('username','')
    password=request.POST.get('password','')
    user=auth.authenticate(request,username=username,password=password)
    if user is not None:
        auth.login(request,user)
        #登录成功则跳转到首页
        return redirect('/')
    else:
        return render(request,'error.html',{'message':'用户名或密码不正确'})
