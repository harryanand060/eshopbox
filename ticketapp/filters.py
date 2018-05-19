import django_filters
from ticketapp.models import Ticket


class TicketFilter(django_filters.FilterSet):
    class Meta:
        model = Ticket
        fields = '__all__'
