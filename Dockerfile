# Use an official Alpine Linux as the base image
FROM alpine:latest

# Install necessary packages: bash, fortune, cowsay, and netcat
RUN apk add --no-cache bash fortune cowsay netcat-openbsd

# Copy the wisecow.sh script to the container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the port that the application will run on
EXPOSE 3000

# Run the script when the container starts
CMD ["/usr/local/bin/wisecow.sh"]
