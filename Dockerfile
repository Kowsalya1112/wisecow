# Use Debian as the base image
FROM debian:latest

# Install required packages using netcat-openbsd
RUN apt-get update && \
    apt-get install -y bash fortune cowsay netcat-openbsd && \
    apt-get clean

# Set the default command
CMD ["bash", "-c", "fortune | cowsay"]
