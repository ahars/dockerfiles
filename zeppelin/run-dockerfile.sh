dir='/Users/ahars/Github/dockerfiles/zeppelin'

docker build --rm -t ahars/zeppelin $dir
docker run -t -i --rm \
	--name zeppelin \
	ahars/zeppelin \
	/bin/bash
