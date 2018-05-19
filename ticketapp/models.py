from django.db import models
from django.contrib.auth.models import User
from django.conf import settings
from django.db.models import permalink
from django.urls import reverse
from django.utils.timezone import now


# Create your models here.
class Department(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Designation(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Employee(models.Model):
    employee = models.OneToOneField(User, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    designation = models.ForeignKey(Designation, on_delete=models.CASCADE)


class Ticket(models.Model):
    name = models.CharField(max_length=100)
    summary = models.CharField(max_length=2000)
    description = models.TextField(blank=True)
    type = models.IntegerField(choices=((1, 'Enquiry'), (2, 'Lead')))
    department = models.ForeignKey(Department, on_delete=models.CASCADE, blank=True, null=True)
    created_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    created_time = models.DateTimeField(default=now)
    assigned_to = models.ForeignKey(User, on_delete=models.CASCADE, blank=True, null=True,
                                    related_name="ticket_assign_to")
    assign_time = models.DateTimeField(blank=True, null=True)
    status = models.BooleanField(choices=((0, 'Open'), (1, 'Close')), default=0)
    closed_by = models.ForeignKey(User, on_delete=models.CASCADE, blank=True, null=True,
                                  related_name='ticket_closed_by')
    close_time = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('edit_ticket', kwargs={'pk': self.id})
