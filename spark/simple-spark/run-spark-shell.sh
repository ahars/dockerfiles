docker build --rm -t ahars/spark-shell .
docker run -t -i --rm \
	--name spark-shell \
	ahars/spark-shell
