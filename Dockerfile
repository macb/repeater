FROM ubuntu:14.04
MAINTAINER Mac Browning <mac@digitalocean.com>

RUN apt-get update
RUN apt-get install -y socat

# Expose our port
EXPOSE 9000

# Run!
USER root
CMD socat -v tcp-l:9000,fork exec:'/bin/cat'
