### Deploy Django on Kubernetes

1. To run kubernetes on local mac , you need the following
   - `brew install kubernetes`
   - `brew install docker minikube virtualbox`
2. Confirm set up
```shell
kannappannatarasan@kanna-mac django_on_kube_23sep2022 % docker --version
Docker version 20.10.17, build 100c701
kannappannatarasan@kanna-mac django_on_kube_23sep2022 % minikube version
minikube version: v1.27.0
commit: 4243041b7a72319b9be7842a7d34b6767bbdac2b
kannappannatarasan@kanna-mac django_on_kube_23sep2022 % kubectl version --client
WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.  Use --output=yaml|json to get the full version.
Client Version: version.Info{Major:"1", Minor:"25", GitVersion:"v1.25.0", GitCommit:"a866cbe2e5bbaa01cfd5e969aa3e033f3282a8a2", GitTreeState:"clean", BuildDate:"2022-08-23T17:44:59Z", GoVersion:"go1.19", Compiler:"gc", Platform:"darwin/arm64"}
Kustomize Version: v4.5.7
kannappannatarasan@kanna-mac django_on_kube_23sep2022 %`
```

-[X] Follow the steps from
  -[X] https://betterprogramming.pub/how-to-deploy-a-django-application-with-kubernetes-f5814b0688bf
  - https://www.digitalocean.com/community/tutorials/how-to-deploy-a-scalable-and-secure-django-application-with-kubernetes    `
  - https://medium.com/containers-101/local-kubernetes-for-mac-minikube-vs-docker-desktop-f2789b3cad3a





   