# Use an Alpine-based image
FROM alpine:latest

# Install necessary dependencies
RUN apk update && \
    apk add --no-cache \
    bash \
    fortune \
    cowsay \
    netcat-openbsd

# Set up the working directory
WORKDIR /app

# Copy your application code into the container
COPY . .

# Set the default command to run your application (update as needed)
CMD ["bash", "-c", "fortune | cowsay"]
