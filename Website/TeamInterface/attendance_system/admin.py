from django.contrib import admin
from .models import Attendance
from .models import StudentDetails
from .models import StaffDetails

admin.site.register(Attendance)
admin.site.register(StudentDetails)
admin.site.register(StaffDetails)