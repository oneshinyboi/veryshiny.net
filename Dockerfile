# Use the latest Fedora image
FROM fedora:latest

# Install dependencies and Hugo
RUN dnf install -y hugo git && \
    hugo version && \
    dnf clean all

# Set environment to production
ENV HUGO_ENV=production

# Set the working directory
WORKDIR /site

# Expose the port Hugo server will run on
EXPOSE 8080

# Command to run the Hugo server in production mode
CMD ["hugo"]
