FROM asdlfkj31h/debian-novnc

# set user to 1000 - further installations with user 0
USER 0

RUN apt-get install -y vim

USER 1000

# Startup
#ENTRYPOINT ["/dockerstartup/vnc_startup.sh"]
#CMD ["/usr/bin/xeyes"]

