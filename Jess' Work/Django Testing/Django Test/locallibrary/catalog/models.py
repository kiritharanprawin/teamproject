from django.db import models
from django.urls import reverse


# Create your models here.

#   Statement I used to duplicated models: 'python manage.py inspectdb > models.py'

class TestTable(models.Model):
    student_id = models.AutoField(db_column='student_ID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='Firstname', max_length=65)  # Field name made lowercase.
    lastname = models.CharField(db_column='Lastname', max_length=65)  # Field name made lowercase.
    course = models.CharField(db_column='Course', max_length=265)  # Field name made lowercase.
    year = models.IntegerField(db_column='Year')  # Field name made lowercase.
    attendance_status = (
        ('Attended', 'Attended'),
        ('Late', 'Late'),
        ('Missing', 'Missing')
    )
    attendance = models.CharField(db_column='Attendance', max_length=20, choices=attendance_status)

    class Meta:
        managed = False
        db_table = 'test_table'


#   Create a new record using the models constructor
#   record = TestTable(firstname='Bart', lastname='Simpson', course='Law', year=4, attendance = 'A')
#   record.save()
#   You can use input to insert specific data, this is just for testing
#   test = input('name')

def __str__(self):
    #   String for representing the objects for the admin site
    return (self.student_ID + ' ' + self.firstname + ' ' + self.lastname + ' ' + self.course + ' ' + self.year + ' '
            + self.attendance)
