from django.urls import re_path, path
from . import views

urlpatterns = [
    path('', views.TicketListView.as_view(), name='dashboard'),
    path('ticket/', views.TicketListView.as_view(), name='list_ticket'),
    path('ticket/add', views.TicketCreateView.as_view(), name='add_ticket'),
    path('ticket/edit/<int:pk>', views.TicketUpdateView.as_view(), name='edit_ticket'),
]
