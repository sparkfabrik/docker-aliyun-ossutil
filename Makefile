all: build-docker-image cli

cli:
	docker run --rm -it --entrypoint /bin/ash sparkfabrik/docker-ossutil:latest

build-docker-image:
	docker build -t sparkfabrik/docker-ossutil:latest -f Dockerfile .

push-docker-image: build-docker-image
	docker push sparkfabrik/docker-ossutil:latest
