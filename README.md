# api.reidchatham.com

### Basic usage

I like using Make to simplify my run commands and to keep track of my commands as I build so that I can automate and so I don't have to remember lots of complex commands.
- Getting started with [Make](https://www.cs.oberlin.edu/~kuperman/help/make.html).

### Testing

#### Use with XCode

- Run a postgres database using the env variables from XCode.
- Run the app in XCode.
- Check http://localhost:443/

#### Docker Compose

- Run `make docker_compose_dev`.
- Check http://localhost:443/

### Publish the server

#### Docker Machine & Docker Swarm

Publish to Docker Hub.
- Run `make docker_build`.
- Run `make docker_tag`.
- Run `make docker_push`.

Create Docker Machines on Digital Ocean
- Run `make docker_machine_do_launch`.
- Run `make docker_machine_do_launch_2`.
- Run `make docker_machine_do_launch_3`.

Initalize Docker Swarm
- Run `make docker_machine_do_eval`.
- Run `docker swarm init`.
- Copy swarm node join command to attach additional workers.
- Run `make docker_machine_unset`.

Attach Swarm worker nodes
- Run `make docker_machine_do_eval_2`.
- Run the command copied from the manager node to add worker nodes.
- Run `make docker_machine_unset`.

Run Docker Compose Stack on Swarm
- Run `make docker_machine_do_eval`.
- Run `make docker_stack_deploy`.

Now try navigating to the ip address of your Droplet to see that it's working. Better yet try it on a different computer, then you know it's working.

Redeploy new changes to the server
- Run `make docker_stack_deploy`.

## Server
- Docker: [Get Started with Docker | Docker](https://www.docker.com/get-started), [Archived: Get Started with Docker | Docker](https://github.com/rchatham/docker.github.io/tree/master/get-started)
	* [Docker ARG, ENV and .env - a Complete Guide](https://vsupalov.com/docker-arg-env-variable-guide/)

- Docker Compose: [Get Started, Part 3: Services](https://github.com/rchatham/docker.github.io/blob/master/get-started/part3.md)
	* [Environment variables in Compose](https://docs.docker.com/compose/environment-variables/)

- Docker Swarm: [Swarm mode key concepts | Docker Documentation](https://docs.docker.com/engine/swarm/key-concepts/), [Swarm mode overview](https://docs.docker.com/engine/swarm/#swarm-mode-cli-commands), [Getting started with swarm mode](https://docs.docker.com/engine/swarm/swarm-tutorial/), [Docker Swarm Mode Tutorials](https://github.com/docker/labs/tree/master/swarm-mode), [Get Started, Part 4: Swarms](https://docs.docker.com/v17.09/get-started/part4/)

- Docker Machine and Docker Compose: [Workflows: using Docker Machine and Docker Compose together in development | Alexander Zeitler](https://alexanderzeitler.com/articles/docker-machine-and-docker-compose-developer-workflows/)

- Swish: [GitHub - thomaspaulmann/Swish: 👷Build Swift Projects on a Remote Machine within Xcode.](https://github.com/thomaspaulmann/Swish)
	* Useful for running Xcode on external build systems

- Launching to Digital Ocean: [DigitalOcean example | Docker Documentation](https://docs.docker.com/machine/examples/ocean/)

- Docker Machine and Digital Ocean: [Adding Existing Digital Ocean Droplet To Docker-Machine](https://medium.com/rayn-studios/adding-existing-digital-ocean-droplet-to-docker-machine-93dfb28e1d96)

- Vapor: [Vapor (Server-side Swift)](https://vapor.codes), [https://github.com/vaporberlin/vaporschool](https://github.com/vaporberlin/vaporschool)
	* Auth w/ self-signed SSL certificate for testing: [Server Side Swift 3 with Vapor: Registering Users over SSL - raywenderlich.com](https://www.youtube.com/watch?v=mAiZTB-ZEDY)

- Vapor - Docker: [Developing and deploying Vapor 3 with Docker | Toby Griffin](https://tobygriffin.dev/2018/05/14/developing-deploying-vapor-docker.html), [Docker loves Swift & Vapor - The.Swift.Dev.](https://theswiftdev.com/2018/11/15/docker-loves-swift-and-vapor/), [VaporDockerDemo](https://github.com/tylermilner/VaporDockerDemo)

- Vapor - Postgres: [Tutorial: How to use PostgreSQL](https://medium.com/@martinlasek/tutorial-how-to-use-postgresql-efb62a434cc5)

- Vapor - Web Auth: [Tutorial: How to build Web Auth with Session](https://medium.com/@martinlasek/tutorial-how-to-build-web-auth-with-session-f9f64ba49830)

- Postgres: [How to Start PostgreSQL Server on Mac OS X via Homebrew](https://chartio.com/resources/tutorials/how-to-start-postgresql-server-on-mac-os-x/)
	* Useful stack overflow answers. [Homebrew postgres broken](https://stackoverflow.com/questions/27700596/homebrew-postgres-broken), [PostgreSQL error Fatal: role “username” does not exist](https://stackoverflow.com/questions/28276706/postgresql-error-fatal-role-username-does-not-exist), [Drop PostgreSQL database through command line [closed]](https://stackoverflow.com/questions/7073773/drop-postgresql-database-through-command-line)

### Server Side Swift
* Running a Vapor Server in a Dockerized Linux Container and writing and testing using Xcode and Docker on Mac

1. Download Xcode
2. Download Docker for Mac
3. SwiftEnv
	* 	[Installation — swiftenv 1.4.0 documentation](https://swiftenv.fuller.li/en/latest/installation.html#via-homebrew)
4. Install Vapor
	* 	`brew tap vapor/tap`
	* `brew install vapor/tap/vapor`
4. Install Swish
	 * `brew install thomaspaulmann/homebrew-formulae/swish`

---
<p align="center">
    <img src="https://user-images.githubusercontent.com/1342803/36623515-7293b4ec-18d3-11e8-85ab-4e2f8fb38fbd.png" width="320" alt="API Template">
    <br>
    <br>
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/api-template">
        <img src="https://circleci.com/gh/vapor/api-template.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.1-brightgreen.svg" alt="Swift 4.1">
    </a>
</p>
