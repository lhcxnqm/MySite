from django.contrib import admin
from .models import GoodMovie

# Register your models here.
@admin.register(GoodMovie)
class GoodMovieAdmin(admin.ModelAdmin):
    list_display = ('id','title','score')