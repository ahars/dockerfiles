dir='/Users/ahars/Github/dockerfiles/java'

docker build --rm -t ahars/java $dir
docker run -t -i --rm \
	--name java \
	ahars/java \
	/bin/bash 
