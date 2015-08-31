
This is the Solr Collection used to illustrate the Alba Framework functionalities in the Alba wiki.

to create the collection:

zkcli.sh -cmd upconfig -zkhost localhost:9983 -confname albabooks -confdir ./solr

to load the sample data:

/path/to/solrcloud/bin/post -c albabooks /path/to/albabooks.csv  (you can find it gzipped in the datagen repo)

keep in mind that prices are just random values ;-)

if you need to regenerate the sample data please refer to the repo datagen.
