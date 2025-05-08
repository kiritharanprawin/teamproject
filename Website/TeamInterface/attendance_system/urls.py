from django.urls import path
from .views import mark_attendance, view_attendance, home, register, user_login, user_logout, attendance_chart, \
    schedule_calendar, settings_view, webcam_view, faq_view, about_view

urlpatterns = [
    path('', home, name='home'),
    path('register/', register, name='register'),
    path('login/', user_login, name='login'),
    path('logout/', user_logout, name='logout'),
    path('mark/', mark_attendance, name='mark_attendance'),
    path('view/', view_attendance, name='view_attendance'),
    path('attendance-chart/', attendance_chart, name='attendance_chart'),
    path('schedule-calendar/', schedule_calendar, name='schedule_calendar'),
    path('settings/', settings_view, name='settings'),
    path('webcam/', webcam_view, name='webcam'),
    path('faq/', faq_view, name='faq'),
    path('about/', about_view, name='about'),
]
