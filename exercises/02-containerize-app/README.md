## Module 02 — Containerize sample app

### Goal
Builds a tiny Nginx container that serves a static web page, with the 
build ID injected during CI/CD. This demonstrates how to produce a 
verifiable, unique artifact from each pipeline run.

## What you should see

The page says **“Hello from CI/CD Lab!”** and shows the build ID (e.g., `Build: 123456789`) when built in GitHub Actions.  

Locally, the placeholder will remain unless you pass a `--build-arg BUILD_ID=local` flag during `docker build`.


### Quick local test
```bash
cd exercises/02-containerize-app/app
docker build -t myorg/sample-app:local .
docker run --rm -p 8080:80 myorg/sample-app:local
# open http://localhost:8080
