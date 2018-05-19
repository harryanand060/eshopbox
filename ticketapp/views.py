from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from django.views.generic import TemplateView, ListView, CreateView, UpdateView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Q
from django_filters.views import FilterView

from ticketapp.filters import TicketFilter
from ticketapp.forms import TicketForm
from ticketapp.models import *


# Create your views here.

class Index(TemplateView):
    template_name = 'index.html'


class Dashboard(LoginRequiredMixin, TemplateView):
    template_name = 'dashboard.html'


class TicketListView(LoginRequiredMixin, FilterView):
    model = Ticket
    context_object_name = 'item_list'  # your own name for the list as a template variable
    template_name = 'ticket_list.html'
    filter_class = TicketFilter,

    def get_queryset(self):
        query = super().get_queryset()
        if not self.request.user.is_superuser:
            query = query.filter(Q(assigned_to=self.request.user) | Q(created_by=self.request.user))
        return query


class TicketCreateView(LoginRequiredMixin, CreateView):
    form_class = TicketForm
    # your own name for the list as a template variable
    template_name = 'ticket_add.html'
    success_url = '/ticket/'

    def form_valid(self, form):
        form.instance.created_by = self.request.user
        return super(TicketCreateView, self).form_valid(form)


class TicketUpdateView(LoginRequiredMixin, UpdateView):
    model = Ticket
    form_class = TicketForm
    # your own name for the list as a template variable
    template_name = 'ticket_add.html'
    success_url = '/ticket/'
