# test-owner-change

A simple repository with a tiny Docker container and automated publishing to GitHub Container Registry.

## Docker Image



This repository contains a minimal Alpine Linux-based Docker image that includes:
- Basic utilities (curl)
- A simple hello script

## Automated Publishing

The Docker image is automatically built and published to GitHub Container Registry (GHCR) when:
- Code is pushed to the `main` branch
- A new tag is created (following semantic versioning)
- Pull requests are opened (for testing)

The published image will be available at:
```
ghcr.io/all-hands-ai/test-owner-change:latest
```

## Running the Container

```bash
docker run ghcr.io/all-hands-ai/test-owner-change:latest
```
