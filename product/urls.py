from django.urls import path
from . import views
app_name = 'product'

urlpatterns = [
    path('product/<int:id_pro>/', views.product, name= 'product'),
    path('product/<int:id_pro>/add', views.addproduct, name= 'addproduct'),
]