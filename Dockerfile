#
# Chrome Dockerfile
#
# https://github.com/dockerfile/chrome
#

# Pull base image.
FROM dockerfile/ubuntu-desktop

# Install Chromium.
RUN \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
  apt-get update && \
  apt-get install -y google-chrome-stable

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901
