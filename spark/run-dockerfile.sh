dir='/Users/ahars/Github/dockerfiles/spark'

docker build --rm -t ahars/spark $dir
docker run -t -i --rm \
	--name spark \
	ahars/spark \
	/bin/bash 
