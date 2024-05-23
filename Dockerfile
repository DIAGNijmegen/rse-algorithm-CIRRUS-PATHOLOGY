# Use the official Alpine base image
FROM public.ecr.aws/docker/library/alpine:edge

# Install necessary packages # For usermod command
RUN apk add --no-cache \
    shadow \
    bash

# Create a new user with a home directory and set the default shell to bash
RUN useradd -m -s /bin/bash user

# Switch to the new user
USER user

# Set the working directory to the user's home directory
WORKDIR /opt/app


# Copy the current directory contents into the container
COPY --chown=user:user start.sh  /opt/app/
COPY --chown=user:user resources  /opt/app/resources

# Ensure the bash script is executable
RUN chmod +x start.sh

# Specify the entrypoint to run the bash script
ENTRYPOINT ["./start.sh"]
