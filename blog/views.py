from django.shortcuts import render
from .models import Blog,BlogType

# Create your views here.
def show(request):
    blogs=Blog.objects

    return render(request,"blog.html",{'blogs':blogs})

def detail(request,blog_id):
    data=Blog.objects.get(id=blog_id)

    return render(request,"detail.html",{'data':data})

def blog_type(request,blog_type_id):
    data=BlogType.objects.get(id=blog_type_id)
    blog=Blog.objects.filter(blog_type=data)

    return render(request,"blog_type.html",{'data':data,'blog':blog})