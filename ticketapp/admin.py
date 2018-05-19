from django.contrib import admin
from .models import *


# Register your models here.

class TicketAdmin(admin.ModelAdmin):
    list_display = (
        'name', 'summary', 'type', 'status', 'created_by', 'assigned_to', 'assign_time', 'closed_by', 'close_time',)


admin.site.register(Ticket, TicketAdmin)


class EmployeeAdmin(admin.ModelAdmin):
    list_display = ('employee', 'department')


admin.site.register(Employee, EmployeeAdmin)

admin.site.register([Department, Designation])
