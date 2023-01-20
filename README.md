# nginx-reverse-proxy-in-docker

Runs Nginx Proxy Manager in a docker container with start and stop scripts.  Persists data and Let's Encrypt SSL certs via docker volumes/server directories "data" and "letsencryt".

**Requirements:**

* Git installed ([Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
* Docker installed ([Install Docker](https://docs.docker.com/get-docker/))
* Docker-Compose installed ([Install Docker-Compose](https://docs.docker.com/compose/install/))

**CLI Installation:**

1. `git clone `
2. `cd nginx-reverse-proxy-in-docker`
3. If you require SUDO to run docker and docker-compose run the start/install script by typing `./sudo-start.sh` [then enter] otherwise run `./root-start.sh`.
4. If everything runs without any errors and you see "Creating nginx-proxy-manager ... done", navigate to `http://server-ip-address:81` and enter default username **admin@example.com** and default password **changeme** ... you will be promted to change the username and password on first login.

[Easy to follow setup guide](https://nginxproxymanager.com/guide/#project-goal)


**Credits:**  The amazing jc21 - https://nginxproxymanager.com/ and https://hub.docker.com/r/jc21/nginx-proxy-manager
