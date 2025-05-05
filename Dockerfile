# Use Alpine base image
FROM alpine:latest

# Update APK repositories and install necessary packages
RUN apk update && \
    apk add --no-cache bash && \
    apk add --no-cache fortune-mod && \
    apk add --no-cache cowsay && \
    apk add --no-cache netcat-openbsd

# Set the default command to run fortune and cowsay commands
CMD ["bash", "-c", "fortune | cowsay"]
