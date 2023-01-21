# nginx-reverse-proxy-in-docker

Runs Nginx Proxy Manager in a docker container with start and stop scripts.  Persists data and Let's Encrypt SSL certs via docker volumes/server directories "data" and "letsencrypt".  I use this in Proxmox LXC.

**TIP:** To open links in this readme in a new tab/window, right-click on the link and choose "Open link in new tab" or "Open link in new window"

## Requirements:

* Linux physical machine, VM, LXC, or container with bash shell. 
* Git installed ([Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
* Docker installed ([Install Docker](https://docs.docker.com/get-docker/))
* Docker-Compose installed ([Install Docker-Compose](https://docs.docker.com/compose/install/))

## CLI Installation:

1. `git clone https://github.com/kyle-thdi/nginx-reverse-proxy-in-docker.git`

2. `cd nginx-reverse-proxy-in-docker`

3. Start the Container:&nbsp;&nbsp;If you are using a sudo user to run docker and docker-compose (recommended), run the start/install script by typing `./sudo-start.sh` [then enter] otherwise run the start/install script by typing `./root-start.sh` [then enter].  The `./root-start.sh` script is useful for Proxmox lxc containers where the base image has only a root user and sudo is not installed.

4. If everything runs without any errors and you see "Creating nginx-proxy-manager ... done", navigate to **http://server-ip-address:81** in your browser.  You should see the Nginx Proxy Manager login page.  Enter the default username **admin&commat;example.com** and the default password **changeme** ... you will be prompted to change the username and password on first login.

5. Stop the Container:&nbsp;&nbsp;If you are using a sudo user to run docker and docker-compose, run the stop script by typing `./sudo-stop.sh` [then enter] otherwise run the stop script by typing `./root-stop.sh` [then enter]. The `./root-stop.sh` script is useful for Proxmox lxc containers where the base image has only a root user and sudo is not installed.

## Initial Setup and Help:

Author's help and setup  guide: [Setup and Help Guide](https://nginxproxymanager.com/guide/#project-goal).  The guide is easy to use and navigate.

### ** Credits and Thanks:

The amazing jc21 and the many other [contributors](https://github.com/NginxProxyManager/nginx-proxy-manager/graphs/contributors) of https://nginxproxymanager.com/ and https://hub.docker.com/r/jc21/nginx-proxy-manager
</dl>

