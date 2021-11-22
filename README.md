# Personal Website

## Quick Start
1. Create `.env` from `.env.example`.
1. `docker run -it --rm -p 8080:8080 -v $(pwd)/:/app/ --env-file .env $(docker build -q -f Dockerfile.dev .)`
