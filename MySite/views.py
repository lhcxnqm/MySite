from django.shortcuts import render
from MyStatistics.utils import get_seven_days_read_data
from django.contrib.contenttypes.models import ContentType
from blog.models import Blog

def mysite(request):
    blog_content_type=ContentType.objects.get_for_model(Blog)
    read_nums,dates=get_seven_days_read_data(blog_content_type)

    return render(request,"index.html",{'read_nums':read_nums,'dates':dates})