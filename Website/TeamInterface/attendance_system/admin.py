from django.contrib import admin
from .models import *

admin.site.register(Attendance)
admin.site.register(StudentDetails)
admin.site.register(StaffDetails)
admin.site.register(ClassSchedule)