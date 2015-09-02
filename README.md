
This is the Solr Collection used to illustrate the Alba Framework functionalities in the Alba wiki.

to create the collection:

zkcli.sh -cmd upconfig -zkhost localhost:9983 -confname albabooks -confdir ./solr

to load the sample data:

/path/to/solrcloud/bin/post -c albabooks /path/to/albabooks.csv  (you can find it gzipped in the datagen repo)

if using the docker image:

/opt/solr/solr-5.2.1/bin/post -host 192.168.99.100 -port 9090 -c albabooks_shard1_replica1 albabooks.csv
(substitute host and ports with the correct values)

keep in mind that prices are just random values ;-)

if you need to regenerate the sample data please refer to the repo datagen.
