import time
from locust import HttpUser, task, between
import random

# This works
#  locust --host=http://localhost:30487 --locustfile todos_post.py

class QuickstartUser(HttpUser):
    wait_time = between(1, 5)

    @task
    def hello_world(self):
        self.client.get("/todos")

    @task
    def create_items(self):
        rand = str(random.random())
        self.client.post("/todos/", json={"task": "something  "+rand, "completed":True})

