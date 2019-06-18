from django.shortcuts import render
#from . import crawmovie,getjsondata
from movieIntroduce.models import GoodMovie,JsonMovie
from django.core.paginator import Paginator

# Create your views here.
def show(request):

    # 需要更新电影排名的时候再执行
    # if GoodMovie.objects.filter().count() == 0:
    #     (title, introduce, score, image) = crawmovie.getMovie()
    #     for i in range(len(title)):
    #         add = GoodMovie(title=title[i],introduce=introduce[i],score=score[i],image=r'movie_images/%s.jpg' % i)
    #         add.save()

    data = GoodMovie.objects
    return render(request,"movie.html",{'data':data})

def showJson(request):

    # #需要更新Json数据的时候执行
    # if JsonMovie.objects.filter().count() == 0:
    #     total = getjsondata.getMovie()
    #     for each in total:
    #         add = JsonMovie(title=each['title'],url=each['url'],\
    #                         period=each['airtime'],image=r'json_images/%s.jpg' % each['airtime'][:-1])
    #         add.save()

    data = JsonMovie.objects.all()
    paginator = Paginator(data, 12)  # 每5个进行分页
    page_num = request.GET.get('page', 1)  # get请求获取url页面的参数
    page_of_movie = paginator.get_page(page_num)  # 这里还未理解，以后有空回来搞

    return render(request,'jsonmovie.html',{'datas':page_of_movie})