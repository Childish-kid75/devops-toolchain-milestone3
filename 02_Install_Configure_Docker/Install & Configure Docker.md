# 02 - Install & Configure Docker

## Purpose

Docker was installed and configured on the Ubuntu server to containerize the application. Docker allows the application to run inside isolated containers with its own dependencies and environment.

## Commands Used
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
docker --version
sudo systemctl status docker

## Evidence

### Docker Installation

[Docker installation evidence](docker-install.png)

### Docker Version

[Docker version evidence](docker-version.png)

### Docker Service Status

[Docker service status evidence](docker-status.png)
