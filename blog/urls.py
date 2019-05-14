from django.urls import path
from . import views

urlpatterns=[
    path('',views.show),
    path('<int:blog_id>',views.detail),
    path('type/<int:blog_type_id>',views.blog_type),
]