FROM debian:latest

# Copying files from machine to the container
COPY . .

# Instructions Layers - commands that run while you build the images
RUN apt update && apt install iputils-ping -y

# Run Commands - the commands the run instantly when you start the container
CMD ["echo", "Hello Wordl!"]