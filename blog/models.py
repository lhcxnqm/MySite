from django.db import models
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils import timezone
from MyStatistics.models import ReadNumExtentMethod

# Create your models here.
class BlogType(models.Model):
    type_name=models.CharField(max_length=20)

    def __str__(self):
        return self.type_name

class Blog(models.Model,ReadNumExtentMethod):
    title=models.CharField(max_length=50)
    content=RichTextUploadingField()
    author=models.ForeignKey(User,on_delete=models.DO_NOTHING)
    blog_type=models.ForeignKey(BlogType,on_delete=models.DO_NOTHING)
    create_time=models.DateTimeField(default=timezone.now())
    image=models.ImageField(default='',upload_to='blog_images')

    def __str__(self):
        return self.title

    def short_content(self):
        return self.content[:20]+'...'

    class Meta:
        ordering=['-create_time']   #按照日期倒序排列