# Use Debian as the base image
FROM debian:bullseye

# Install required packages
RUN apt-get update && apt-get install -y fortune cowsay netcat && apt-get clean

# Copy the script into the container
COPY wisecow.sh /app/wisecow.sh

# Make the script executable
RUN chmod +x /app/wisecow.sh

# Set working directory
WORKDIR /app

# Expose port (change 3000 to whatever you're using)
EXPOSE 3000

# Run the script
CMD ["bash", "-c", "fortune | cowsay"]
