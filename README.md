# Rising of the DevOps

## Story

You are working at _What A Good Software Ltd_ as a full stack developer. During the sprint planning a task titled „Create CI/CD for webapp” has been assigned to you, and it is about creating a CI/CD pipeline for the webapp which your team is developing. The team uses GitHub, so **GitHub Actions** is a good choice to solve this task.

The task is ready when the build is green and the app is deployed.

## What are you going to learn?

- Create a CI/CD pipeline with GitHub Actions workflow.
- Set running conditions for GitHub Actions workflow.
- Build a Docker image.
- Push the Docker image to image registry.
- Deploy the app using the Docker image.

## Tasks

1. Create a basic GitHub Actions workflow to run the lint test of your JavaScript app.
    - There is a pull request in GitHub with Github Actions workflow.
    - There is a running lint test in GitHub Actions for the app.

2. Fix the failing build
    - No errors show up in the build logs, the build is green.
    - No lint errors occur when running `npm lint`.

3. Create a Dockerfile which builds and runs the app without the uneccessary files and folders.
    - Dockerfile is valid, the image starts the app.
    - Valid `.dockerignore` file that excludes `.git` and `node_modules` folders.

4. Modify the GitHub Actions workflow to build and push the Docker image to DockerHub.
    - DockerHub access information (`DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN`) are added as secret environment variables to GitHub Actions.
    - The workflow builds and pushes the docker image to DockerHub.

5. Modify the GitHub Actions workflow to deploy the app to Heroku.
    - Heroku access information (`HEROKU_API_KEY`, `HEROKU_APP_NAME`, and `HEROKU_EMAIL`) are added as secret environment variables to GitHub Actions.
    - The workflow deploys the application's Docker image to Heroku, the app is up and running.

## General requirements

None

## Hints

- This project runs a linter to showcase the CI pipeline's capability. However, the proper place for linting is in your IDE and/or at pre-commit stage. You want to lint your code before it gets checked-in and shared.
- First you need to create a GitHub Actions workflow, then you have to edit that YAML file to meet the requirements. Then fix the linting task by checking the linter's error message. Enable the workflow to build and push the Docker image, and finally set a deployment on Heroku. For that you have to create GitHub Actions secrets to store environment variables that enable GitHub Actions workflow to access DockerHub and Heroku.
- Even if you don't have much experience with JavaScript or Node.js, you can easily fix the linting errors by editing `index.js` and add proper line endings (semicolons) where needed.

## Background materials

- <i class="far fa-exclamation"></i> [GitHub Actions basics](https://docs.github.com/en/actions)
- <i class="far fa-exclamation"></i> [Docker basics](https://docs.docker.com/ci-cd/best-practices/)
- <i class="far fa-exclamation"></i> [DockerHub basics](https://docs.docker.com/ci-cd/best-practices/)
- <i class="far fa-exclamation"></i> [Heroku basics](https://help.heroku.com/PBGP6IDE/how-should-i-generate-an-api-key-that-allows-me-to-use-the-heroku-platform-api)
- <i class="far fa-exclamation"></i> [CI/CD basics](https://docs.github.com/en/actions/automating-builds-and-tests/about-continuous-integration)
- <i class="far fa-exclamation"></i> [Node.js basics](https://nodejs.dev/learn)

