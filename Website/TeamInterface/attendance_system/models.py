from django.contrib.auth.models import User
from django.db import models

class Attendance(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    date = models.DateField(auto_now_add=True)
    status = models.CharField(
        max_length=10,
        choices=[('Present', 'Present'), ('Absent', 'Absent')],
        default='Absent'
    )

    def __str__(self):
        return f"{self.user.username} - {self.date} - {self.status}"
    
class ClassSchedule(models.Model):
    course_name = models.CharField(max_length=200)
    instructor = models.CharField(max_length=200)
    start_time = models.TimeField()
    end_time = models.TimeField()
    date = models.DateField()

    def __str__(self):
        return f"{self.course_name} - {self.date}"