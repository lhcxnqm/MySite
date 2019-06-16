from django.shortcuts import render
from . import crawmovie
from .models import GoodMovie

# Create your views here.
def show(request):

    '''需要更新电影排名的时候再执行
    (title, introduce, score, image) = crawmovie.getMovie()
    if GoodMovie.objects.filter().count() == 0:
        for i in range(len(title)):
            add = GoodMovie(title=title[i],introduce=introduce[i],score=score[i],image=r'movie_images/%s.jpg' % i)
            add.save()
    '''

    data = GoodMovie.objects
    return render(request,"movie.html",{'data':data})