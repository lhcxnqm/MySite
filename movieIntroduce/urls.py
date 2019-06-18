from django.urls import path
from .import views

urlpatterns=[
    path('',views.show),
    path('json',views.showJson),
]