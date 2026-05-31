# 05 - Build & Push Docker Image

## Objective

The objective of this section was to build, tag, and run a custom Docker container that runs a simple Python script.

## My Docker Practical Exercise

For this task, I created a small Python application and packaged it inside a Docker container. The container runs the Python script automatically when the container starts.

## Tasks Completed

1. Created a project directory for the Docker exercise.
2. Created a Python script called `app.py`.
3. Created a `Dockerfile`.
4. Built and tagged the Docker image.
5. Ran the Docker container.
6. Captured screenshots of the build and run output.

## Commands Used

cd ~/devops-toolchain-milestone3

mkdir -p 05_Build_Push_Docker_Image/docker-python-app
cd 05_Build_Push_Docker_Image/docker-python-app

nano app.py
nano Dockerfile

docker build -t reghardt-python-app:v1 .
docker run --rm reghardt-python-app:v1

## Project Structure

05_Build_Push_Docker_Image/
├── README.md
└── docker-python-app/
    ├── app.py
    └── Dockerfile

## app.py Content

print("Docker Practical Exercise")
print("This Python script is running inside a custom Docker container.")
print("Created by Reghardt603065 for DevOps Toolchain Milestone 3.")

## Dockerfile Content

FROM python:3.11-slim

WORKDIR /app

COPY app.py .

CMD ["python", "app.py"]

## Explanation

The Python script was created as a simple application to demonstrate that Docker can run custom code inside a container.

The `Dockerfile` uses the `python:3.11-slim` image as the base image. The working directory inside the container is set to `/app`. The Python script is copied into the container, and the container runs the script using the `CMD` instruction.

The image was built and tagged as `reghardt-python-app:v1`. After building the image, the container was run using `docker run --rm reghardt-python-app:v1`.

## Evidence

[Docker project files](docker-project-files.png)

[Docker build output](docker-build-output.png)

[Docker run output](docker-run-output.png)
