from django.urls import path,include
from rest_framework import routers
from testapp.api.views import HydJobsCRUDCBV
from testapp.api.views import BngJobsCRUDCBV
from testapp.api.views import PuneJobsCRUDCBV
from testapp.api.views import BbsrJobsCRUDCBV
router = routers.DefaultRouter()
router.register('hydjobs',HydJobsCRUDCBV)
router.register('bngjobs',BngJobsCRUDCBV)
router.register('punejobs',PuneJobsCRUDCBV)
router.register('bbsrjobs',BbsrJobsCRUDCBV)

urlpatterns = [
    path('',include(router.urls))
]
