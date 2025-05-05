# Use an Alpine-based image
FROM alpine:latest

# Install necessary dependencies
RUN apk update && \
    apk add --no-cache \
    bash \
    fortune \
    cowsay \
    netcat-openbsd

# Set the default command to run the fortune and cowsay commands
CMD ["bash", "-c", "fortune | cowsay"]
