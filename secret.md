```bat
oc create secret docker-registry harbor-pull-secret \
 --docker-server=harbor.mycorp.com \
 --docker-username=robot$ci-puller \
 --docker-password=xxxxxx \
 --docker-email=devops@mycorp.com
```

docker login -u xxx

dckr_pat_CQkpx4X6QkiSmuwykqr7tvw21jkx

oc create secret docker-registry hello-secret \
 --docker-server=https://index.docker.io/v1/ \
 --docker-username=xxx \
 --docker-password=dckr_pat_CQkpx4X6QkiSmuwykqr7tvw21jkx \
 --docker-email=xxx.dev@gmail.com

oc create serviceaccount hello-sa

oc secrets link hello-sa hello-secret --for=pull
