# created by: Mukul 
from django.http import HttpResponse
def index(request):
    return HttpResponse("Hello, world. You're at the swapnshop index.")

def about(request):
    return HttpResponse("Hello, world. You're at the swapnshop about.")