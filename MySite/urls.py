"""MySite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
import blog.urls,comment.urls,movieIntroduce.urls
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/',admin.site.urls),
    #通用路由
    path('',views.mysite),
    path('login/',views.login),
    path('register/',views.register),
    path('logout/',views.logout),
    path('the12306/',views.the12306),
    #博客路由
    path('blog/', include(blog.urls)),
    #电影推荐路由
    path('movie/',include(movieIntroduce.urls)),
    #这是用来在后台编辑框内添加图片路由
    path('ckeditor',include('ckeditor_uploader.urls')),
    #评论处理
    path('comment/',include(comment.urls)),
] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
