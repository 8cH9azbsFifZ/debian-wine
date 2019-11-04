# debian-wine (Docker)
Debian image with NoVNC and Wine

## Using it
* Find on Dockerhub: https://hub.docker.com/r/asdlfkj31h/debian-wine

## Contents of the container
* Xvfb - X11 in a virtual framebuffer
* x11vnc - A VNC server that scrapes the above X11 server
* [noNVC](https://kanaka.github.io/noVNC/) - A HTML5 canvas vnc viewer
* Fluxbox - a small window manager
* Explorer.exe - to demo that it works

## Run It

    docker run --rm -p 8080:8080 asdlfkj31h/debian-wine
    xdg-open http://localhost:8080

In your web browser you should see the default application, explorer.exe:

## Modifying

Create a new Dockerfile for your application, modify supervisord.conf for starting your application:
    FROM asdlfkj31h/debian-wine:0.3
    ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
    ADD <STUFF_HERE> /install 
    RUN cat /root/novnc/vnc_lite.html | sed 's/<title>noVNC/<title>MY APPLICATION/g' > /root/novnc/tmp.html && cat /root/novnc/tmp.html > /root/novnc/vnc_lite.html && rm /root/novnc/tmp.html

Build and run your new image...

# References
* Based on: https://github.com/solarkennedy/wine-x11-novnc-docker
