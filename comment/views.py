from django.shortcuts import render,redirect
from comment.models import Comment
from blog.models import Blog
from django.contrib.contenttypes.models import ContentType
from django.http import JsonResponse

# Create your views here.

def update_comment(request):
    #如果用户未登陆，则不允许评论
    if not request.user.is_authenticated:
        return render(request,'error.html',{'message':'用户未登陆'})
    text=request.POST.get('text','').strip()
    object_id=int(request.POST.get('object_id',''))
    #如果评论内容为空，则不允许评论
    if text=='':
        return render(request,'error.html',{'message':'评论内容为空'})

    blog=Blog()
    blogtype=ContentType.objects.get_for_model(blog)

    comment=Comment()
    comment.user,comment.text=request.user,text
    comment.content_type,comment.object_id=blogtype,object_id
    comment.save()

    #返回数据
    data={}
    data['username']=comment.user.username
    data['comment_time']=comment.comment_time.strftime('%Y-%m-%d %H:%M:%S')
    data['text']=comment.text
    return JsonResponse(data)