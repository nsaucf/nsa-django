from django.shortcuts import render

def index(request):
    return render(request, 'index.html')

def about(request):
    return render(request, 'about.html')

def events(request):
    return render(request, 'events.html')

def leadership(request):
    return render(request, 'leadership.html')

def faq(request):
    return render(request, 'faq.html')

def membership(request):
    return render(request, 'membership.html')

def brainbee(request):
    return render(request, 'brainbee.html')

