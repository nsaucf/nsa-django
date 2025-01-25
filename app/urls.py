from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),  # Map the root URL to the index view
    path('about/', views.about, name='about'),
    path('events/', views.events, name='events'),
    path('leadership/', views.leadership, name='leadership'),
    path('faq/', views.faq, name='faq'),
    path('membership/', views.membership, name='membership'),
    path('brainbee/', views.brainbee, name='brainbee'),
]
