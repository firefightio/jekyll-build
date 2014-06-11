#
# Jekyll - Fedora
#

# Pull base image.
FROM fedora

# Install Ruby + gems
RUN yum update -y
RUN yum install -y ruby gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel
RUN yum install -y ruby-rdoc ruby-devel git
RUN yum install -y rubygems

# Install Nodejs
RUN yum install -y nodejs

# Install Jekyll
RUN gem install jekyll

# Attach volumes.
VOLUME /blog

# Git clone of markdown files

# Expose ports.
EXPOSE 80

# Define default command.
CMD ["/bin/bash"]
