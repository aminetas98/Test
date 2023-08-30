export Node_ip=$1

export elastic_namespace=$2

chmod +x elastic-helm/efk.sh

./elastic-helm/efk.sh $elastic_namespace $Node_ip


echo "
Fluent-bit: http://$Node_ip:2020/
ElasticSearch: http://$Node_ip:9200/
Kibana: http://$Node_ip:5601/
# If you are not using self-signed certificat you can change to https.
"

# All installations of grafana are either still initializing or fully available.
# To inspect the status of these deployments run this watch.
#watch kubectl get all --namespace=$elastic_namespace


#To uninstall 

# helm uninstall elasticsearch -n $elastic_namespace
# kubectl delete ns $elastic_namespace
