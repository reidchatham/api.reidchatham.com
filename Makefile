docker_build:
	docker build -t api.reidchatham.com:1.0.0 .

docker_run:
	docker run -it --name=api.reidchatham.com-container -p 8080:8080 api.reidchatham.com:1.0.0

docker_build_run: docker_build docker_run

docker_stop:
	docker stop api.reidchatham.com-container

docker_remove:
	docker rm api.reidchatham.com-container

docker_restart:
	docker restart api.reidchatham.com-container

# dev
# run docker with current directory mounted to app folder in container
docker_run_dev:
	docker run -d -it --name=api.reidchatham.com-container -v $(pwd):/app -p 8080:8080 api.reidchatham.com:1.0.0

docker_build_run_dev: docker_build docker_run_dev
