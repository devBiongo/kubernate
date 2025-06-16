```bat
oc create secret docker-registry harbor-pull-secret \
 --docker-server=harbor.mycorp.com \
 --docker-username=robot$ci-puller \
 --docker-password=xxxxxx \
 --docker-email=devops@mycorp.com
```

oc secrets link default harbor-secret --for=pull -n my-namespace
