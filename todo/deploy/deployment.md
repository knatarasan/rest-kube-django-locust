
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