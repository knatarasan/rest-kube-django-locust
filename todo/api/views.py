from rest_framework import viewsets

from .serializers import TodoSerializer
from .models import Todo


class TodoViewSet(viewsets.ModelViewSet):
    queryset = Todo.objects.all().order_by('task')
    serializer_class = TodoSerializer