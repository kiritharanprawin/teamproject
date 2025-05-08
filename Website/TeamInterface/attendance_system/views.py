from django.shortcuts import render, redirect
from .models import Attendance
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib import messages
from .models import Attendance, ClassSchedule
import json
from attendance_system import models
from django.utils import timezone


@login_required
def mark_attendance(request):
    if request.method == 'POST':
        status = request.POST.get('status', 'Absent')
        Attendance.objects.create(user=request.user, status=status)
        return redirect('view_attendance')
    return render(request, 'attendance_system/mark_attendance.html')


@login_required
def view_attendance(request):
    attendance_records = Attendance.objects.filter(user=request.user)
    return render(request, 'attendance_system/view_attendance.html', {'attendance_records': attendance_records})


def home(request):
    # Fetch upcoming classes (e.g., classes scheduled for today or later)
    upcoming_classes = ClassSchedule.objects.filter(date__gte=timezone.now().date()).order_by('date', 'start_time')[:5]

    return render(request, 'attendance_system/home.html', {
        'upcoming_classes': upcoming_classes,
    })


# user

def register(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            messages.success(request, "Registration successful!")
            return redirect('home')
        else:
            for error in list(form.errors.values()):
                messages.error(request, error)
    else:
        form = UserCreationForm()
    return render(request, 'attendance_system/register.html', {'form': form})


def user_login(request):
    if request.method == "POST":
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                messages.success(request, f"Welcome back, {username}!")
                return redirect('home')
            else:
                messages.error(request, "Invalid username or password.")
        else:
            messages.error(request, "Invalid username or password.")
    else:
        form = AuthenticationForm()
    return render(request, 'attendance_system/login.html', {'form': form})


def user_logout(request):
    logout(request)
    messages.info(request, "You have successfully logged out.")
    return redirect('home')


#
def attendance_chart(request):
    # Query attendance data
    attendance_data = Attendance.objects.values('date').annotate(count=models.Count('id'))
    dates = [entry['date'].strftime("%Y-%m-%d") for entry in attendance_data]
    counts = [entry['count'] for entry in attendance_data]

    return render(request, 'attendance_system/attendance_chart.html', {
        'dates': dates,
        'counts': counts,
    })


#

def schedule_calendar(request):
    schedules = models.ClassSchedule.objects.all()
    events = [
        {"title": s.course_name, "start": s.date.strftime("%Y-%m-%d"), "allDay": True}
        for s in schedules
    ]
    return render(request, 'attendance_system/schedule_calendar.html', {
        'events': json.dumps(events),
    })


def settings_view(request):
    return render(request, 'attendance_system/settings.html')


def webcam_view(request):
    return render(request, 'attendance_system/webcam.html')

def faq_view(request):
    return render(request, 'attendance_system/faq.html')

def about_view(request):
    return render(request, 'attendance_system/about.html')
