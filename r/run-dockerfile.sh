dir='/Users/ahars/Github/dockerfiles/r'

docker build --rm -t ahars/r-programming $dir
docker run -t -i --rm \
	--name r-programming \
	ahars/r-programming

