# 01 - Update Ubuntu Server

## Purpose

The Ubuntu server was updated to make sure the system had the latest package information, security updates, and software dependencies before installing the required DevOps tools.

## Commands Used

```bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
```

## Explanation

The `sudo apt update` command refreshes the Ubuntu package list so the system knows which software versions are available.

The `sudo apt upgrade -y` command installs available system updates automatically.

The `sudo apt autoremove -y` command removes unused packages that are no longer required.

Updating Ubuntu first is important because tools such as Docker, Git, and Chef depend on updated system packages and repositories.

## Evidence

[Ubuntu server update evidence](update-ubuntu-server.png)
