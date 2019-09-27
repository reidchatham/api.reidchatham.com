docker_build:
	docker build -t api:1.0.0 .

docker_run:
	docker run -p 8080:8080 api:1.0.0

docker_build_run: docker_build docker_run
