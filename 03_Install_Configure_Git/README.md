# Install & Configure Git
# 03 - Install & Configure Git

## Purpose

Git was installed and configured on the Ubuntu server to manage the project source code. Git allows changes to be tracked, committed, and pushed to the shared GitHub repository.

## Commands Used

sudo apt install git -y
git --version
git config --global user.name "Reghardt603065"
git config --global user.email "reghardtjvvo4o8o7@gmail.com"
git config --global --list

## Explanation

The `sudo apt install git -y` command installs Git on the Ubuntu server.

The `git --version` command confirms that Git was installed successfully.

The `git config --global user.name` command sets the username that appears on Git commits.

The `git config --global user.email` command sets the email address linked to the Git commits.

The `git config --global --list` command displays the configured Git username and email to confirm that Git was configured correctly.

Git was required for this project because the repository is hosted on GitHub, and each team member works on their own branch before pushing changes.

## Evidence

[Git installation evidence](git-install.png)

[Git version and configuration evidence](git-version-config.png)
