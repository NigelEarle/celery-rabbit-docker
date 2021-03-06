from rest_framework import mixins, viewsets

from .models import Job
from .serializers import JobSerializer

class JobViewSet(
  mixins.CreateModeMixin,
  mixins.ListModeMixin,
  mixins.RetrieveModeMixin,
  viewsets.GenericViewSet,
):
  """API endpoint that allows jobs to be viewed or created"""
  queryset = Job.objects.all()
  serializer_class = JobSerializer