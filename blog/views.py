from django.shortcuts import render
from blog.models import Blog,BlogType
from django.core.paginator import Paginator
from django.db.models import Count
from MyStatistics.utils import read_statistics_once_read

# Create your views here.
def show(request):
    blogs=Blog.objects.all()
    paginator=Paginator(blogs,5)  #每5篇进行分页
    page_num=request.GET.get('page',1)  #get请求获取url页面的参数
    page_of_blogs=paginator.get_page(page_num)  #这里还未理解，以后有空回来搞

    #获取博客分类栏对应类的数量
    blogtype=BlogType.objects.annotate(type_count=Count('blog'))
    'blogtype=BlogType.objects'
    return render(request, "blog.html", {'blogs':page_of_blogs, 'blogtype':blogtype})

def detail(request,blog_id):
    data=Blog.objects.get(id=blog_id)
    # 当访问一次某篇文章的时候，如果cookie不存在则对应的阅读数加1
    read_cookie_key=read_statistics_once_read(request,data)

    response=render(request,"detail.html",{'data':data})    #响应
    response.set_cookie(read_cookie_key,'true')  #这里设置cookie，在关闭浏览器之前都存在
    return response

def blog_type(request,blog_type_id):
    data=BlogType.objects.get(id=blog_type_id)
    blog=Blog.objects.filter(blog_type=data)

    paginator = Paginator(blog.all(), 5)  # 每5篇进行分页
    page_num = request.GET.get('page', 1)  # get请求获取url页面的参数
    page_of_blogs = paginator.get_page(page_num)  # 这里还未理解，以后有空回来搞

    return render(request,"blog_type.html",{'data':data,'blog':blog,'blogs':page_of_blogs})