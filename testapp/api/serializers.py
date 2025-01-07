from rest_framework.serializers import ModelSerializer
from testapp.models import HydJobs
from testapp.models import BngJobs
from testapp.models import PuneJobs
from testapp.models import BbsrJobs

class HydJobsSerializer(ModelSerializer):
    class Meta:
        model = HydJobs
        fields = '__all__'

class BngJobsSerializer(ModelSerializer):
    class Meta:
        model = BngJobs
        fields = '__all__'

class PuneJobsSerializer(ModelSerializer):
    class Meta:
        model = PuneJobs
        fields = '__all__'

class BbsrJobsSerializer(ModelSerializer):
    class Meta:
        model = BbsrJobs
        fields = '__all__'