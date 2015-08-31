
PATH_TO_ZKCLI=/opt/solr/solr-5.2.1/server/scripts/cloud-scripts

$PATH_TO_ZKCLI/zkcli.sh -cmd upconfig -zkhost localhost:9983 -confname albabooks -confdir ./solr
