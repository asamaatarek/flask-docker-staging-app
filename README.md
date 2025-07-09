# Flask Docker Staging App

This project demonstrates a simple Flask web application containerized using a **multi-stage Dockerfile** for optimized builds.

## Why Multi-Stage Docker?

Multi-stage builds reduce the final image size by separating dependencies and build tools from the runtime environment. This results in:
- Smaller, faster images
- Better security (only runtime deps included)
- Cleaner deployment pipeline

---

## Features

- Python 3.11 + Alpine-based image (lightweight)
- Multi-stage Dockerfile
- Minimal Flask app
- Ready to run using `docker run`
- `index.html` template served with Flask
- Port exposed: `5000`

---

## Project Structure

```bash
flask-docker-staging-app/
│
├── app.py               # Main Flask app
├── requirements.txt     # Python dependencies
├── templates/
│   └── index.html       # Simple HTML page
└── Dockerfile           # Multi-stage build
