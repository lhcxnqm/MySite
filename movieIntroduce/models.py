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