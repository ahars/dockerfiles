dir='/Users/ahars/Github/dockerfiles/spark'

docker build --rm -t ahars/spark $dir
docker run -t -i --rm \
	--name spark \
	ahars/spark \
        spark-1.5.2-bin-hadoop2.6/bin/spark-shell 

