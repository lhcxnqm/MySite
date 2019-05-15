from django.shortcuts import render
from .models import Blog,BlogType
from django.core.paginator import Paginator

# Create your views here.
def show(request):
    blogs=Blog.objects.all()
    paginator=Paginator(blogs,5)  #每5篇进行分页
    page_num=request.GET.get('page',1)  #get请求获取url页面的参数
    page_of_blogs=paginator.get_page(page_num)  #这里还未理解，以后有空回来搞

    blogtype=BlogType.objects
    return render(request, "blog.html", {'blogs':page_of_blogs, 'blogtype':blogtype})

def detail(request,blog_id):
    data=Blog.objects.get(id=blog_id)
    return render(request,"detail.html",{'data':data})

def blog_type(request,blog_type_id):
    data=BlogType.objects.get(id=blog_type_id)
    blog=Blog.objects.filter(blog_type=data)

    paginator = Paginator(blog.all(), 5)  # 每5篇进行分页
    page_num = request.GET.get('page', 1)  # get请求获取url页面的参数
    page_of_blogs = paginator.get_page(page_num)  # 这里还未理解，以后有空回来搞

    return render(request,"blog_type.html",{'data':data,'blog':blog,'blogs':page_of_blogs})