# Use the Fedora base image
FROM fedora:latest

# Run an upgrade of the system
RUN dnf -y upgrade

# Install required applications
RUN dnf -y install tuxpaint vim httpd

# Expose port 80/tcp
EXPOSE 80/tcp

# Enable httpd service
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
