# Use Debian as the base image
FROM debian:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y bash fortune cowsay netcat && \
    apt-get clean

# Set default command
CMD ["bash", "-c", "fortune | cowsay"]
