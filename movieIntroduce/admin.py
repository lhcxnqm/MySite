from django.contrib import admin
from .models import GoodMovie,JsonMovie

# Register your models here.
@admin.register(GoodMovie)
class GoodMovieAdmin(admin.ModelAdmin):
    list_display = ('id','title','score')

@admin.register(JsonMovie)
class JsonMovieAdmin(admin.ModelAdmin):
    list_display = ('id','title','period')