from django.forms import ModelForm, Textarea, TextInput, Select, DateTimeInput

from .models import *


class TicketForm(ModelForm):
    class Meta:
        model = Ticket
        exclude = ['created_by']
        widgets = {
            'name': TextInput(attrs={'class': 'form-control'}),
            'summary': TextInput(attrs={'class': 'form-control'}),
            'description': Textarea(attrs={'cols': 80, 'rows': 10, 'class': 'form-control'}),
            'type': Select(attrs={'class': 'form-control'}),
            'department': Select(attrs={'class': 'form-control'}),

            'assigned_to': Select(attrs={'class': 'form-control'}),
            'status': Select(attrs={'class': 'form-control'}),
            'closed_by': Select(attrs={'class': 'form-control'}),
            'created_time': DateTimeInput(attrs={'class': 'form-control'}),
            'assign_time': DateTimeInput(attrs={'class': 'form-control'}),
            'close_time': DateTimeInput(attrs={'class': 'form-control'}),
        }
