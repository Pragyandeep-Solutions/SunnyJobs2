import requests
BASE_URL = 'http://127.0.0.1:8000/'
END_POINT = 'api/hydjobs/'
END_POINT1 = 'api/bngjobs/'
END_POINT2 = 'api/punejobs/'
END_POINT3 = 'api/bbsrjobs/'

r = requests.get(BASE_URL + END_POINT + END_POINT1 + END_POINT2 + END_POINT3)
data = r.json()
for job in data:
    print('Company Name:',job['company'])
    print('Eligibility:',job['eligibility'])
    print('Title:',job['title'])
    print('Mail ID:',job['email'])
    print('Phone Number:',job['phonenumber'])
    print()
