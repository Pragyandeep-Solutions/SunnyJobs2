from django.shortcuts import render
from .models import HydJobs
from .models import BngJobs
from .models import PuneJobs
from .models import BbsrJobs

# Create your views here.
def homepage_view(request):
    return render(request,'testapp/index.html')

def hydjobs_view(request):
    jobs_list = HydJobs.objects.all()
    my_dict = {'jobs_list': jobs_list}
    return render(request,'testapp/hydjobs.html',my_dict)

def bngjobs_view(request):
    jobs_list = BngJobs.objects.all()
    my_dict = {'jobs_list': jobs_list}
    return render(request,'testapp/bngjobs.html',my_dict)

def punejobs_view(request):
    jobs_list = PuneJobs.objects.all()
    my_dict = {'jobs_list': jobs_list}
    return render(request,'testapp/punejobs.html',my_dict)

def bbsrjobs_view(request):
    jobs_list = BbsrJobs.objects.all()
    my_dict = {'jobs_list': jobs_list}
    return render(request,'testapp/bbsrjobs.html',my_dict)