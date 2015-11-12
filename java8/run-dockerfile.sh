dir='/Users/ahars/Github/dockerfiles/java8'

docker build --rm -t ahars/java8 $dir
docker run -t -i --rm \
	--name java8 \
	ahars/java8 \
	/bin/bash 
