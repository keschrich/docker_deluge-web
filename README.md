# keschrich/deluge-web Docker image
## Description
**keschrich/deluge-web** ([Docker Hub](https://hub.docker.com/r/keschrich/deluge-web), [GitHub](https://github.com/keschrich/docker_deluge-web)) is a Docker container running the web front-end for the **Deluge 1.3.15** BitTorrent client.

It is based on **keschrich/deluge-common** ([Docker Hub](https://hub.docker.com/r/keschrich/deluge-common), [GitHub](https://github.com/keschrich/docker_deluge-common)) and executes the *deluge-web* daemon process.

See **keschrich/deluged** ([Docker Hub](https://hub.docker.com/r/keschrich/deluged), [GitHub](https://github.com/keschrich/docker_deluged)) for corresponding container with deluged.

See the readme for keschrich/deluge-common for the rationale on *yet another* deluge container.
## Volumes
One volume is specified in the Dockerfile:
- /config - Deluge-web configuration dir

## Ports
The following port is exposed:
- 8112 - Deluge-web http port

## Environment Variables
- $DELUGE_HOST=*deluged_host* - Hostname/FQDN/IP of host running deluged, defaults to *deluged*.
- $DELUGE_PORT=*deluged_port* - Deluge console daemon port, defaults to *58846*.
- $DELUGE_USER=*username* - Username for Deluge connection, defaults to *localclient*.
- $DELUGE_PASS=*password* - Password for Deluge connection, defaults to *notspecified*.

## Usage
    docker run -p 8112:8112 -v /host/deluge-web-config:/config -e DELUGE_PASS=somepass keschrich/deluge-web

Example docker-compose files running both services can be found here: [https://github.com/keschrich/docker_deluge-common/tree/master/examples](https://github.com/keschrich/docker_deluge-common/tree/master/examples).