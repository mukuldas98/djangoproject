# created by: Mukul 
from django.http import HttpResponse
from django.shortcuts import render
def index(request):
    return render(request, 'index.html')

def login(request):
    print("login")
    return render(request, 'login.html')

def signup(request):
    return render(request, 'signup.html')