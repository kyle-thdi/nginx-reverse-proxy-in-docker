# nginx-reverse-proxy-in-docker

Runs Nginx Proxy Manager in docker container with start and stop scripts.  Persists data and Let's Encrypt SSL certs via docker volumes/server directories "data" and "letsencryt".

Requirements:

* Docker installed
* Docker-Compose installed

Installation:

1. Clone Repo
2. `cd reverse-proxy`
3. `./start.sh`

Credits:  https://nginxproxymanager.com/ the amazing jc21 project (https://hub.docker.com/r/jc21/nginx-proxy-manager)
