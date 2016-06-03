docker build --rm -t ahars/spark-submit .

docker run -t -i --rm \
	--name spark-submit \
	-p 53:53 \
	ahars/spark-submit \
	./spark-1.6.1-bin-hadoop2.6/bin/spark-submit \
		--master spark://172.20.10.1:7077 \
		--class com.ahars.submitting.SimpleJob \
		--deploy-mode=cluster \
		--driver-memory=1G \
		--executor-memory=1G \
		/Users/ahars/git/dockerfiles/spark/submit/jars/spark-sandbox.jar
