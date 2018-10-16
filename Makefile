.PHONY: test

test:

	# Testing 2.7
	docker run -it --rm \
	-v ${PWD}/test/data:/mnt/data \
	-v ${PWD}/test/src:/mnt/src \
	-v ${PWD}/test/results:/mnt/results \
	-e IMAGE_VERSION=2.7 \
	geopandas-base:2.7 /mnt/src/test.sh

	# Testing 3.6
	docker run -it --rm \
	-v ${PWD}/test/data:/mnt/data \
	-v ${PWD}/test/src:/mnt/src \
	-v ${PWD}/test/results:/mnt/results \
	-e IMAGE_VERSION=3.6 \
	geopandas-base:3.6 /mnt/src/test.sh

.PHONY: build

build:

	# Building 2.7/2
	docker build -t geopandas-base:2.7 python27

	# Building 3.6/3/latest
	docker build -t geopandas-base:3.6 python36
