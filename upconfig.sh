
PATH_TO_ZKCLI=/opt/solr/solr-5.2.1/server/scripts/cloud-scripts

# with Docker you need to overwrite these vars
SOLRCLOUD_HOST=127.0.0.1
ZKPORT=9983

$PATH_TO_ZKCLI/zkcli.sh -cmd upconfig -zkhost $SOLRCLOUD_HOST:$ZKPORT -confname albabooks -confdir ./solr
