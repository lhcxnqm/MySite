from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone

# Create your models here.
class BlogType(models.Model):
    type_name=models.CharField(max_length=20)

    def __str__(self):
        return self.type_name

class Blog(models.Model):
    title=models.CharField(max_length=50)
    content=models.TextField(max_length=300)
    author=models.ForeignKey(User,on_delete=models.DO_NOTHING)
    blog_type=models.ForeignKey(BlogType,on_delete=models.DO_NOTHING)
    create_time=models.DateTimeField(default=timezone.now())

    def __str__(self):
        return self.title