dir='/Users/ahars/Github/dockerfiles/zeppelin'

docker build --rm -t ahars/zeppelin $dir
docker run -t -i --rm \
    -p 8080:8080 \
    --name zeppelin \
    ahars/zeppelin

