import datetime
from django.contrib.contenttypes.models import ContentType
from .models import ReadNum,ReadDetail
from django.db.models import Sum
from django.utils import timezone

#用来统计某文章阅读次数的方法
def read_statistics_once_read(request,obj):
    ct=ContentType.objects.get_for_model(obj)
    key='read_%s_%s' % (ct.model,obj.pk)
    if not request.COOKIES.get(key):
        #当前文章阅读数加1
        readnum,created=ReadNum.objects.get_or_create(content_type=ct,object_id=obj.pk)
        readnum.read_num+=1
        readnum.save()

        #给当天的阅读数加1
        readDetail,created=ReadDetail.objects.get_or_create(content_type=ct,object_id=obj.pk,date=timezone.now().date())
        readDetail.read_num+=1
        readDetail.save()

    return key

#获取七天的阅读数据
def get_seven_days_read_data(content_type):
    today=timezone.now().date()
    dates=[]
    read_nums=[]
    for i in range(7,0,-1):
        date=today-datetime.timedelta(days=i)
        dates.append(date.strftime('%m/%d'))
        read_details=ReadDetail.objects.filter(content_type=content_type,date=date)
        result=read_details.aggregate(read_num_sum=Sum('read_num'))
        read_nums.append(result['read_num_sum'] or 0)

    return read_nums,dates