from django.db import models
from django.urls import reverse


# Create your models here.

#   Statement I used to duplicated models: 'python manage.py inspectdb > models.py'

class AttendanceTable(models.Model):
    student_id = models.CharField(db_column='student_ID', primary_key=True, max_length=10)  # Field name made lowercase.
    firstname = models.CharField(db_column='Firstname', max_length=200)  # Field name made lowercase.
    lastname = models.CharField(db_column='Lastname', max_length=200)  # Field name made lowercase.
    course = models.CharField(db_column='Course', max_length=200)  # Field name made lowercase.
    module = models.CharField(db_column='Module', max_length=200)  # Field name made lowercase.
    student_photo = models.TextField(db_column='Student_Photo')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'attendance table'


class UserDetails(models.Model):
    username = models.CharField(max_length=200)
    password = models.CharField(max_length=200)
    user_id = models.AutoField(db_column='user_ID', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user_details'


#   Create a new record using the models constructor
#   record = TestTable(firstname='Bart', lastname='Simpson', course='Law', year=4, attendance = 'A')
#   record.save()
#   You can use input to insert specific data, this is just for testing
#   test = input('name')

def __str__(self):
    #   String for representing the objects for the admin site
    return (self.student_ID + ' ' + self.firstname + ' ' + self.lastname + ' ' + self.course + ' ' + self.year + ' '
            + self.attendance)
