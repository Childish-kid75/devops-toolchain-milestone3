# 03 - Install & Configure Git

## Purpose

Git was installed and configured on the Ubuntu server to manage the project source code. Git allows changes to be tracked, committed, and pushed to the shared GitHub repository.

This section also includes the Git practical exercise where a small web project was added to the existing repository, committed, pushed, edited, committed again, and pushed again to demonstrate version control.

---

## Part 1: Install & Configure Git

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

[Git install and version](git-install-version.png)

[Git config](git-config.png)

---

## Part 2: Git Practical Exercise

## Objective

The objective of this practical exercise was to demonstrate version control using Git. This was done by adding project files, committing them, pushing them to GitHub, editing an existing file, and pushing the updated version again.

## My Approach

For this practical exercise, I used the existing shared GitHub repository instead of creating a separate new repository. I worked on the `reghardt-partb` branch so that my work remained separate from the main branch.

Inside the Git section, I created a folder called `git-practical`. This folder contains an `index.html` file and a `Dockerfile`.

The `index.html` file was created as a custom web page explaining the Git practical exercise. The `Dockerfile` was added to show how the HTML page could be hosted using an Nginx container.

After creating the first version of the files, I added, committed, and pushed them to GitHub. I then edited the `index.html` file, created a second commit, and pushed the updated version to demonstrate how Git tracks changes over time.

## Tasks Completed

1. Used the existing shared GitHub repository.
2. Worked on the `reghardt-partb` branch.
3. Created a folder called `git-practical`.
4. Created an `index.html` file with original project information.
5. Created a `Dockerfile`.
6. Added, committed, and pushed the first version.
7. Edited the `index.html` file.
8. Added, committed, and pushed the updated version.
9. Captured screenshots as evidence of the process.

## Commands Used

cd ~/devops-toolchain-milestone3

mkdir -p 03_Install_Configure_Git/git-practical
cd 03_Install_Configure_Git/git-practical

nano index.html
nano Dockerfile
ls

cd ~/devops-toolchain-milestone3

git status
git add 03_Install_Configure_Git/git-practical/
git commit -m "Add Git practical project files"
git pull --no-rebase origin reghardt-partb
git push origin reghardt-partb

nano 03_Install_Configure_Git/git-practical/index.html

git status
git add 03_Install_Configure_Git/git-practical/index.html
git commit -m "Update Git practical HTML page"
git pull --no-rebase origin reghardt-partb
git push origin reghardt-partb

## Git Practical Folder Structure

03_Install_Configure_Git/
└── git-practical/
    ├── Dockerfile
    └── index.html

## index.html First Version

<!DOCTYPE html>
<html>
<head>
  <title>Reghardt Git Practical</title>
</head>
<body>
  <h1>Git Version Control Practical Exercise</h1>

  <h2>Project Overview</h2>
  <p>
    This web page was created as part of my DevOps Toolchain Milestone 3 practical work.
    The purpose of this file is to demonstrate how Git can be used to track changes,
    commit project files, and push work to a shared GitHub repository.
  </p>

  <h2>Repository Information</h2>
  <p>
    This practical was completed inside the existing shared repository instead of creating
    a new repository. I worked on my own branch called reghardt-partb to keep my changes
    separate from the main branch.
  </p>

  <h2>Files Added</h2>
  <p>
    For this Git practical, I added an index.html file and a Dockerfile. The index.html file
    represents a simple web page, while the Dockerfile shows how the page could be hosted
    inside an Nginx container.
  </p>

  <h2>First Version</h2>
  <p>
    This is the first version of the page created by Reghardt603065.
  </p>
</body>
</html>`

## index.html Updated Version

<!DOCTYPE html>
<html>
<head>
  <title>Reghardt Git Practical</title>
</head>
<body>
  <h1>Git Version Control Practical Exercise</h1>

  <h2>Project Overview</h2>
  <p>
    This web page was created as part of my DevOps Toolchain Milestone 3 practical work.
    The purpose of this file is to demonstrate how Git can be used to track project changes,
    manage versions, and push updates to a shared GitHub repository.
  </p>

  <h2>Repository Information</h2>
  <p>
    This practical was completed inside the existing shared repository instead of creating
    a new repository. I worked on my own branch called reghardt-partb to keep my work
    separate from the main branch.
  </p>

  <h2>Files Used</h2>
  <p>
    The practical includes an index.html file and a Dockerfile. The index.html file
    represents the project content, while the Dockerfile shows how the page could be
    served using an Nginx container.
  </p>

  <h2>Updated Version</h2>
  <p>
    This page was updated after the first push to demonstrate how Git tracks changes
    to an existing file. The updated version was committed and pushed again by
    Reghardt603065.
  </p>

  <h2>What This Demonstrates</h2>
  <p>
    This update shows that Git can record file changes over time. The first commit added
    the original files, while the second commit saved the updated version of this HTML page.
  </p>
</body>
</html>

## Dockerfile Content

dockerfile
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80


## Explanation

The Git practical exercise shows how Git is used during a real project workflow. First, the project files were created and added to the repository. The first commit saved the original version of the `index.html` file and the `Dockerfile`.

After the first push, the `index.html` file was edited to create a second version. The updated file was then added, committed, and pushed again. This demonstrates how Git keeps track of changes and allows the project history to show what was added or changed over time.

This task was completed on the existing shared repository using the `reghardt-partb` branch.

## Git Practical Evidence

[Git index first version](git-index-first-version.png)

[Git Dockerfile](git-dockerfile.png)

[Git first commit and push](git-first-commit-push.png)

[Git index updated version](git-index-updated-version.png)

[Git second commit and push](git-second-commit-push.png)
