# 03 - Install & Configure Git

## Purpose

Git was installed and configured on the Ubuntu server so that I could manage the project files properly and keep track of changes made during the practical work.

Git is important in this project because the work is stored in a shared GitHub repository. Each person works on their own branch, commits their changes, and pushes the updated files back to GitHub.

This folder includes both the Git installation/configuration work and the Git practical exercise.

## Part 1: Install & Configure Git
### Commands Used

```bash
sudo apt install git -y
git --version
git config --global user.name "Reghardt603065"
git config --global user.email "reghardtjvvo4o8o7@gmail.com"
git config --global --list
```

### Explanation
The `sudo apt install git -y` command was used to install Git on the Ubuntu server.

After installing Git, I used `git --version` to confirm that Git was installed successfully.

I then configured Git with my GitHub username and email address. This is important because Git uses these details to show who made each commit.

The `git config --global --list` command was used to check that the username and email were saved correctly.

Git was needed for this assignment because all the project work had to be added, committed, and pushed to the shared GitHub repository from my own branch.

### Evidence
[Git install and version](git-install-version.png)

[Git config](git-config.png)


## Part 2: Git Practical Exercise

### Objective
The objective of this practical exercise was to show that I can use Git for version control. This included creating project files, adding them to Git, committing them, pushing them to GitHub, editing a file, and pushing the updated version again.

### What I Did
For this practical, I used the existing shared repository instead of creating a completely new repository. I worked on the `reghardt-partb` branch, which is my own branch for this part of the project.

Inside the Git folder, I created a folder called `git-practical`. This folder contains two files: `index.html` and `Dockerfile`.

The `index.html` file was used as the project file that gets edited and tracked by Git. The `Dockerfile` was included because the task required adding a Docker file as part of the Git practical.

After creating the first version of the files, I added them to Git, committed them, and pushed them to GitHub. I then edited the `index.html` file and pushed the updated version again. This shows how Git keeps a history of changes.

### Tasks Completed

1. Used the existing shared GitHub repository.
2. Worked on my own branch called `reghardt-partb`.
3. Created a folder called `git-practical`.
4. Added an `index.html` file.
5. Added a `Dockerfile`.
6. Added, committed, and pushed the first version.
7. Edited the `index.html` file.
8. Added, committed, and pushed the updated version.
9. Added screenshots as proof of the process.

### Commands Used

```bash
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
```

### Git Practical Folder Structure

```bash
03_Install_Configure_Git/
└── git-practical/
    ├── Dockerfile
    └── index.html
```

### index.html First Version

```html
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
</html>
```

### index.html Updated Version

```html
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
```

### Dockerfile Content

```dockerfile
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```

### Reflection
This practical helped me understand how Git is used in a real project workflow. The first push showed how new files are added to a repository. The second push showed how Git tracks updates after a file has been changed.

Using Git in this way makes it easier to see what was changed, when it was changed, and which version of the work is currently saved on GitHub.

### Git Practical Evidence

[Git index first version](git-index-first-version.png)

[Git Dockerfile](git-dockerfile.png)

[Git first commit and push](git-first-commit-push.png)

[Git index updated version](git-index-updated-version.png)

[Git second commit and push](git-second-commit-push.png)
