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


class StudentDetails(models.Model):
    student_ID = models.AutoField(db_column='student_ID', primary_key=True)
    firstname = models.CharField(db_column='Firstname', max_length=265)
    lastname = models.CharField(db_column='Lastname', max_length=265)
    course = models.CharField(db_column='Course', max_length=265)
    year = models.IntegerField(db_column='Year')
    phone_number = models.CharField(db_column='Phone_Number', max_length=13)
    email = models.CharField(db_column='Email', max_length=265)
    id_photo = models.ImageField(db_column='ID_Photo', upload_to='studentsID_photos/')

    class Meta:
        managed = False
        db_table = 'student_details'


class StaffDetails(models.Model):
    staff_ID = models.AutoField(db_column='staff_ID', primary_key=True)
    firstname = models.CharField(db_column='Firstname', max_length=265)
    lastname = models.CharField(db_column='Lastname', max_length=265)
    lecture_course = models.CharField(db_column='Lecture_Course', max_length=265)
    lecture_modules = models.CharField(db_column='Lecture_Modules', max_length=265)
    personal_email = models.CharField(db_column='Personal_Email', max_length=265)
    phone_number = models.CharField(db_column='Phone_Number', max_length=13)

    class Meta:
        managed = False
        db_table = 'staff_details'
