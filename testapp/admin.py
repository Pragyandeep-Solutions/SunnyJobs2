from django.contrib import admin
from .models import HydJobs
from .models import BngJobs
from .models import PuneJobs
from .models import BbsrJobs

# Register your models here.
class HydJobsAdmin(admin.ModelAdmin):
    list_display = ['date','company','title','eligibility','address','email','phonenumber']
admin.site.register(HydJobs,HydJobsAdmin)

class BngJobsAdmin(admin.ModelAdmin):
    list_display = ['date','company','title','eligibility','address','email','phonenumber']
admin.site.register(BngJobs,BngJobsAdmin)

class PuneJobsAdmin(admin.ModelAdmin):
    list_display = ['date','company','title','eligibility','address','email','phonenumber']
admin.site.register(PuneJobs,PuneJobsAdmin)

class BbsrJobsAdmin(admin.ModelAdmin):
    list_display = ['date','company','title','eligibility','address','email','phonenumber']
admin.site.register(BbsrJobs,BbsrJobsAdmin)