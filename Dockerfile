# Use the Fedora base image
FROM fedora:latest

# Run an upgrade of the system
RUN dnf -y upgrade

# Install required applications
RUN dnf -y install tuxpaint vim httpd

# Add myinfo.html to /var/www/html/
COPY myinfo.html /var/www/html/

# Expose port 80/tcp
EXPOSE 80/tcp

# Enable httpd service
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
