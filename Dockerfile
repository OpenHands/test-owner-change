FROM alpine:latest

# Install basic utilities
RUN apk add --no-cache curl

# Create a simple app directory
WORKDIR /app

# Add a simple script
RUN echo '#!/bin/sh' > /app/hello.sh && \
    echo 'echo "Hello from test-owner-change container!"' >> /app/hello.sh && \
    chmod +x /app/hello.sh

# Expose a port (optional)
EXPOSE 8080

# Default command
CMD ["/app/hello.sh"]