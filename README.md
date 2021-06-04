# Personal Website

## Quick Start
1. Create `.env` from `.env.example`.
1. `docker run -it --rm -p 8080:8080 -v $(pwd)/:/app/ $(docker build -q -f Dockerfile.dev .) bash`
1. `npm install`
1. `npm start`
