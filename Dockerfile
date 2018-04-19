# try to create an image using both GitHub and Jenkins Open Blue Ocean

# Docker file example
FROM bash:latest

# Docker stage (command syntax depends where the "build" is done, here: on Alpine Linux)
RUN adduser -D test

# ports
EXPOSE 80/tcp 8080/tcp 443/tcp

# volumes
VOLUME ["/tmp" , "/mnt"]

# users
USER test:test

# command launched within the container
ENTRYPOINT ["cat" , "/etc/alpine-release"]
