To fix metrics-server issue

1. [This brought upto `kubectl top nodes` works](https://thospfuller.com/2020/11/29/easy-kubernetes-metrics-server-install-in-minikube-in-five-steps/)
2. `minikube addons enable metrics-server`

### Detailed steps
#### 1. To set up metrics server
```shell
kubectl replace --force -f components.yaml
kubectl delete hpa php-apache
kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10
minikube addons enable metrics-server
  
kubectl get hpa
NAME         REFERENCE               TARGETS   MINPODS   MAXPODS   REPLICAS   AGE
php-apache   Deployment/php-apache   43%/50%   1         10        6          12m
```
#### 2. To set up apache server and load
```shell
kubectl apply -f https://k8s.io/examples/application/php-apache.yaml
kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"
  #If you don't see a command prompt, try pressing enter.
  #OK!OK!OK!
```

#### 3. Observe load
```shell
kubectl get hpa
NAME         REFERENCE               TARGETS   MINPODS   MAXPODS   REPLICAS   AGE
php-apache   Deployment/php-apache   43%/50%   1         10        6          12m
```

[HPA walkthrough](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)

