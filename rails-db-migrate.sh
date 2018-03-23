#!/bin/bash
COUNTER=600
kubectl delete job rails-db-migrate || true
cat rails-db-migrate-job.yaml.tmpl | sed 's/IMAGE'"/$IMAGE/g" | kubectl apply -f -
until kubectl get po -a | grep rails-db-migrate | grep Completed;
do
    sleep 1;
    COUNTER=`expr $COUNTER - 1`;
    if [ $COUNTER -eq 0 ]; then exit 1; fi
done
kubectl logs  $(kubectl get po -a | grep rails-db-migrate | awk {'print $1'}) 