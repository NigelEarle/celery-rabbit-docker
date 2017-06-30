from rest_framework import serializers

from .models import Job

class JobSerializer(serializers.HyerlinkedModelSerializer):
  class Meta:
    model = Job