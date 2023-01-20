# nginx-reverse-proxy-in-docker

Runs Nginx Proxy Manager in a docker container with start and stop scripts.  Persists data and Let's Encrypt SSL certs via docker volumes/server directories "data" and "letsencrypt".

**TIP:** To open links in this readme in a new tab/window, right-click on the link and choose "Open link in new tab" or "Open link in new window"

## Requirements:

* Linux physical machine, VM, LXC, or container with bash shell.  Phsyical machines will require virtualization enabled in BIOS.  VM &amp; Containers will need to enable nested virtualization (consult vendor documentation)
* Git installed ([Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
* Docker installed ([Install Docker](https://docs.docker.com/get-docker/))
* Docker-Compose installed ([Install Docker-Compose](https://docs.docker.com/compose/install/))

## CLI Installation:

1. `git clone https://github.com/kyle-thdi/nginx-reverse-proxy-in-docker.git`
2. `cd nginx-reverse-proxy-in-docker`
3. Start the Container:&nbsp;&nbsp;If you are using a sudo user to run docker and docker-compose, run the start/install script by typing `./sudo-start.sh` [then enter] otherwise run the start/install script by typing `./root-start.sh` [then enter]
4. If everything runs without any errors and you see "Creating nginx-proxy-manager ... done", navigate to **http://server-ip-address:81** in your browser.  You should see the Nginx Proxy Manager login page.  Enter the default username **admin&commat;example.com** and the default password **changeme** ... you will be prompted to change the username and password on first login.
5. Stop the Container:&nbsp;&nbsp;If you are using a sudo user to run docker and docker-compose, run the stop script by typing `./sudo-stop.sh` [then enter] otherwise run the stop script by typing `./root-stop.sh` [then enter]

## Initial Setup and Help:

Author's help and setup  guide: [Setup and Help Guide](https://nginxproxymanager.com/guide/#project-goal).  The guide is easy to use and navigate.

<dl>
  <dt><em>Credits:<em></dt>
  <dd>The amazing jc21 - https://nginxproxymanager.com/ and https://hub.docker.com/r/jc21/nginx-proxy-manager</dd>
</dl>

