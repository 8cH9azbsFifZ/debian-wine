FROM asdlfkj31h/debian-novnc

# set user to 1000 - further installations with user 0
USER 0

#RUN apt-get install -y vim
RUN dpkg --add-architecture i386 
RUN wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
RUN echo deb https://dl.winehq.org/wine-builds/debian/ buster main >> /etc/apt/sources.list
RUN apt-get update

USER 1000

# Startup
#ENTRYPOINT ["/dockerstartup/vnc_startup.sh"]
#CMD ["/usr/bin/xeyes"]

