
# your local solrcloud installation, 
# we need this to use zkcli.sh and bin/post
SOLRCLOUD_PATH=/opt/solr/solr-5.2.1

# your Docker host, 
# use  eval "$(docker-machine env default)" to get your correct address
SOLRCLOUD_HOST=192.168.99.100

# these params are used to map the containerized solrcloud ports with your host.
SOLRCLOUD_PORT=9090
ZKPORT=9091

gunzip albabooks.csv.gz

PATH_TO_ZKCLI=$SOLRCLOUD_PATH$/server/scripts/cloud-scripts

docker run -dit -p $SOLRCLOUD_PORT:8983 -p $ZKPORT:9983 alba/latest

# TODO here there should be a real loop instead of a sleep
echo "waiting 10 secs for SolrCloud boot"
sleep 10

$PATH_TO_ZKCLI/zkcli.sh -cmd upconfig -zkhost $SOLRCLOUD_HOST:$ZKPORT -confname albabooks -confdir ./solr

echo "creating the albabooks collection"
wget -O - "http://$SOLRCLOUD_HOST:$SOLRCLOUD_PORT/solr/admin/collections?action=CREATE&name=albabooks&numShards=1&replicationFactor=1&collection.configName=albabooks"

echo "loading the sample dataset"
$SOLRCLOUD_PATH$/bin/post -host $SOLRCLOUD_HOST -port $SOLRCLOUD_PORT -c albabooks_shard1_replica1 albabooks.csv

echo "Done!"
