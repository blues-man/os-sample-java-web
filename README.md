# os-sample-java-web
Sample Tomcat based Java Web Application with a Dockerfile to be deployed on Kubernetes and OpenShift.

# Build

## With Docker

```
$ docker build .
```

## With Podman

```
$ buildah but -t hello-openshift-tomcat .
```

# Deploy

This repository is linked to a public repository on Quay registry: https://quay.io/repository/bluesman/hello-openshift-tomcat  

## OpenShift

```
$ oc new-app quay.io/repository/bluesman/hello-openshift-tomcat:latest
```

## Kubernetes 

```  
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-openshift-tomcat-deploy
  labels:
    app: hello-openshift-tomcat
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hello-openshift-tomcat
  template:
    metadata:
      labels:
        app: hello-openshift-tomcat
    spec:
      containers:
      - name: hello-openshift-tomcat
        image: quay.io/bluesman/hello-openshift-tomcat:latest
        ports:
        - containerPort: 8080
```

