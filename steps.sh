# Steps to complete

# 1. Prep Django docker image in local machine
django-admin startproject djangokubernetesproject
#Navigate into django folder
cd djangokubernetesproject

# Prep Dockerfile with following content

cat << EOF >Dockerfile
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y tzdata && apt install -y python3.8 python3-pip
RUN apt install python3-dev libpq-dev nginx -y
RUN pip install django gunicorn psycopg2
ADD . /app
WORKDIR /app
EXPOSE 8000
CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "djangokubernetesproject.wsgi"]
EOF

# Prep image
docker build -t djangokubernetesproject .

#2. Spin Django container and update
# get into shell
docker run -i -t djangokubernetesproject sh

# You should see hash prompt
python3 manage.py makemigrations && python3 manage.py migrate

# Create superuser
python3 manage.py createsuperuser

# spin a Container and check
# -p aligns NodePort 80 --> Container port 8000
docker run -p 80:8000 djangokubernetesproject

# create secret

kubectl create secret docker-registry dockersecret --docker-server=https://hub.docker.com/repository/docker/knatarasan/thurai --docker-username=knatarasan --docker-password=Raptor50$ --docker-email=kannappan_natarasan@yahoo.com


