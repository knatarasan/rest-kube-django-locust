docker tag djangokubernetesproject:latest knatarasan/thurai:latest
docker push knatarasan/thurai:latest
kubectl create secret docker-registry dockersecret --docker-server=https://index.docker.io/v1/ --docker-username=knatarasan --docker-password= --docker-email=kannappan_natarasan@yahoo.com

#11:40