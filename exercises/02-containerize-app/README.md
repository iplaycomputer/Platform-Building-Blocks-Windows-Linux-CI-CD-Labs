# Module 02 — Containerize sample app

Builds a tiny nginx page and pushes an image in CI.

Quick local test:
```bash
cd exercises/02-containerize-app/app
docker build -t myorg/sample-app:local .
docker run --rm -p 8080:80 myorg/sample-app:local
# open http://localhost:8080
