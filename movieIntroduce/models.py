from django.db import models

# Create your models here.
class GoodMovie(models.Model):
    title = models.CharField(max_length=50)
    introduce = models.CharField(max_length=100)
    score = models.CharField(max_length=50)
    image = models.ImageField(default='',upload_to='movie_images')

    def __str__(self):
        return self.title

    def short_introduce(self):
        return self.introduce[:50] + '..'

class JsonMovie(models.Model):
    title = models.CharField(max_length=50)
    url = models.CharField(max_length=100)
    image = models.ImageField(default='',upload_to='json_images')
    period = models.CharField(max_length=100)

    def __str__(self):
        return self.title