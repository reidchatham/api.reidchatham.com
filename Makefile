
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

docker_postgres:
	docker run -d -it --name=postgres-container -p 27017:27017 postgres

docker_run_postgres:
	docker run -d -it --name=api.reidchatham.com-container -p 3000:3000 --link postgres-container:postgres api.reidchatham.com:1.0.0

docker_build_run_postgres: docker_build docker_run_postgres

docker_run_postgres_dev:
	docker run -d -it --name=api.reidchatham.com-container -v $(pwd):/app -p 3000:3000 --link postgres-container:postgres api.reidchatham.com:1.0.0

docker_build_run_postgres_dev: docker_build docker_run_postgres_dev

# docker-machine
DIGITALOCEAN_TOKEN_FILE=digital-ocean.token
DIGITALOCEAN_TOKEN=`cat $(DIGITALOCEAN_TOKEN_FILE)`

docker_machine_do_launch:
	docker-machine create --driver digitalocean --digitalocean-access-token $(DIGITALOCEAN_TOKEN) api.reidchatham.com-sandbox
	docker-machine env api.reidchatham.com-sandbox
	eval $(docker-machine env api.reidchatham.com-sandbox)

docker_machine_ssh:
	docker-machine ssh api.reidchatham.com-sandbox

docker_machine_do_stop:
	docker-machine stop api.reidchatham.com-sandbox

docker_machine_do_rm:
	docker-machine rm api.reidchatham.com-sandbox
