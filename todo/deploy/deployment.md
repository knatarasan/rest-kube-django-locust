
### To prep image

```shell
cd todo
docker build -t todo .
docker login
docker tag todo:latest knatarasan/todo:latest
docker push knatarasan/todo:latest

kubectl apply -f postgres/
kubectl apply -f django/

# to access service from browwer, following will open a browser
minikube service django-service
```

### Run prometheus
```shell
cd prometheus
kubectl create namespace monitoring
kubectl create -f clusterRole.yaml
kubectl create -f config-map.yaml
kubectl create  -f prometheus-php-apache.yaml 
kubectl get deployments --namespace=monitoring
kubectl get pods --namespace=monitoring

# To run prometheus UI
kubectl port-forward prometheus-monitoring-<name from above command> 8080:9090 -n monitoring
```

## Kubernetes commands

### How to check django log
`k logs django-f77bd65db-5t6hp`

### DB USER id password

#### Encoded
    user: `ZGphbmdv`
    password: `MWEyNmQxZzI2ZDFnZXNiP2U3ZGVzYj9lN2Q`
#### Human readable
    user: django
    password: 1a26d1g26d1gesb?e7desb?e7d

### To run shell of container:
`kubectl exec -it pod-name -- /bin/bash`

### To reach container with psql client:
`kubectl exec -it [pod-name] --  psql -h localhost -U admin --password -p [port] postgresdb`
Example
`k exec -it postgres-5657d98cdf-6458f -- psql -h localhost -U django --password -p 5432 todo`

### To run minikube:
1. Docker desktop : Up and running
2. `minikube start`