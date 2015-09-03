
This is the Solr Collection used to illustrate the Alba Framework functionalities in the Alba wiki.

to create the collection:

zkcli.sh -cmd upconfig -zkhost localhost:9983 -confname albabooks -confdir ./solr

to load the sample data:

/path/to/solrcloud/bin/post -c albabooks /path/to/albabooks.csv  (you can find it gzipped in the datagen repo)

you can also load the sample dataset in the provided docker container:

short version:

    ./bootstrapfromdocker.sh

long version:

- run the container:
    docker run -dit -p 9090:8983 -p 9091:9983 alba/latest

- load the data:

    /opt/solr/solr-5.2.1/bin/post -host 192.168.99.100 -port 9090 -c albabooks_shard1_replica1 albabooks.csv
    (substitute host and ports with the correct values)


you can find the Docker container repo [here](https://github.com/leonardofoderaro/alba-docker).

keep in mind that prices are just random values ;-)

if you want to know more about how sample dataset has been obtained and preprocessed or if you want to regenerate it please refer to the [albabooks-datagen](https://github.com/leonardofoderaro/albabooks-datagen) repo.
