from django.shortcuts import render,redirect
from MyStatistics.utils import get_seven_days_read_data
from django.contrib.contenttypes.models import ContentType
from blog.models import Blog
from django.contrib import auth
from .forms import LoginForm,RegisterForm
from django.contrib.auth.models import User
from django.contrib import messages

def mysite(request):
    blog_content_type=ContentType.objects.get_for_model(Blog)
    read_nums,dates=get_seven_days_read_data(blog_content_type)

    return render(request,"index.html",{'read_nums':read_nums,'dates':dates})

def login(request):
    if request.method=='POST':
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user=login_form.cleaned_data['user']
            auth.login(request,user)
            try:
                return redirect(request.GET.get('from'))    # 登陆成功则返回到原来的文章页面
            except:
                 return redirect('/')  #直接从导航页点击的话登录后跳转到首页
    else:
        login_form=LoginForm()

    return render(request,"login.html",{'login_form':login_form})

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
            try:
                return redirect(request.GET.get('from'))
            except:
                return redirect('/')    #从导航栏注册话，注册成功则跳转到首页
    else:
        register_form=RegisterForm()

    return render(request,'register.html',{'register_form':register_form})