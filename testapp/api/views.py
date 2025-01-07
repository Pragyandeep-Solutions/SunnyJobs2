from rest_framework import viewsets
from testapp.api.serializers import HydJobsSerializer
from testapp.api.serializers import BngJobsSerializer
from testapp.api.serializers import PuneJobsSerializer
from testapp.api.serializers import BbsrJobsSerializer
from testapp.models import HydJobs
from testapp.models import BngJobs
from testapp.models import PuneJobs
from testapp.models import BbsrJobs

class HydJobsCRUDCBV(viewsets.ModelViewSet):
    queryset = HydJobs.objects.all()
    serializer_class = HydJobsSerializer

class BngJobsCRUDCBV(viewsets.ModelViewSet):
    queryset = BngJobs.objects.all()
    serializer_class = BngJobsSerializer

class PuneJobsCRUDCBV(viewsets.ModelViewSet):
    queryset = PuneJobs.objects.all()
    serializer_class = PuneJobsSerializer

class BbsrJobsCRUDCBV(viewsets.ModelViewSet):
    queryset = BbsrJobs.objects.all()
    serializer_class = BbsrJobsSerializer
