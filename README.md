# api.reidchatham.com

### Basic usage

Run command `make docker_build_run` to build and run and instance of the api in a docker container on your machine.

## Server
- Docker: [Get Started with Docker | Docker](https://www.docker.com/get-started)

- Docker Swarm: [Swarm mode key concepts | Docker Documentation](https://docs.docker.com/engine/swarm/key-concepts/)

- Docker Machine and Digital Ocean: [DigitalOcean example](https://docs.docker.com/machine/examples/ocean/)

- Swish: [GitHub - thomaspaulmann/Swish: 👷Build Swift Projects on a Remote Machine within Xcode.](https://github.com/thomaspaulmann/Swish)
	* Useful for running Xcode on external build systems

- Launching to Digital Ocean: [DigitalOcean example | Docker Documentation](https://docs.docker.com/machine/examples/ocean/)

- Vapor: [Vapor (Server-side Swift)](https://vapor.codes)

- Vapor - Docker: [Developing and deploying Vapor 3 with Docker | Toby Griffin](https://tobygriffin.dev/2018/05/14/developing-deploying-vapor-docker.html)


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
