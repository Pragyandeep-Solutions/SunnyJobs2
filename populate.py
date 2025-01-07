import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'SunnyJobs.settings')
import django
django.setup()

from faker import Faker
from testapp.models import HydJobs
from testapp.models import BngJobs
from testapp.models import PuneJobs
from testapp.models import BbsrJobs
from random import *
fake = Faker()

def phonenumbergen():
	d1 = randint(6,9)
	num = ''+str(d1)
	for i in range(9):
		num += str(randint(0,9))
	return int(num)

def populate(n):
    # ['date', 'company', 'title', 'eligibility', 'email', 'phonenumber', 'address']
    for i in range(n):
        fdate = fake.date()
        fcompany = fake.company()
        ftitle = fake.random_element(elements=('Project Manager', 'Team Lead', 'Software Engineer', 'Associate Engineer'))
        feligibility = fake.random_element(elements=('BCA', 'BSc', 'BTech', 'MCA', 'MSc', 'MTech', 'PHD'))
        femail = fake.email()
        fphonenumber = phonenumbergen()
        faddress = fake.address()
        hyd_jobs_records = HydJobs.objects.get_or_create(
            date = fdate,
            company = fcompany,
            title = ftitle,
            eligibility = feligibility,
            address = faddress,
            email = femail,
            phonenumber = fphonenumber
        )
        bng_jobs_records = BngJobs.objects.get_or_create(
            date=fdate,
            company=fcompany,
            title=ftitle,
            eligibility=feligibility,
            address=faddress,
            email=femail,
            phonenumber=fphonenumber
        )
        pune_jobs_records = PuneJobs.objects.get_or_create(
            date=fdate,
            company=fcompany,
            title=ftitle,
            eligibility=feligibility,
            address=faddress,
            email=femail,
            phonenumber=fphonenumber
        )
        bbsr_jobs_records = BbsrJobs.objects.get_or_create(
            date=fdate,
            company=fcompany,
            title=ftitle,
            eligibility=feligibility,
            address=faddress,
            email=femail,
            phonenumber=fphonenumber
        )
n = int(input('Enter number of records: '))
populate(n)
print(f'{n} records inserted successfully')