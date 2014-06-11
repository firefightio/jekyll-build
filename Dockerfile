#
# Jekyll - Fedora
#

# Pull base image.
FROM fedora

# Install Ruby + gems
RUN yum update -y
RUN yum install -y ruby gcc gcc-c++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel
RUN yum install -y ruby-rdoc ruby-devel git which
RUN yum install -y rubygems

# Install Nodejs
RUN yum install -y nodejs

# Install Jekyll
RUN gem install jekyll

# Attach volumes.
VOLUME /blog_build

# Git clone of markdown files
RUN git clone https://github.com/firefightio/blog-firefightio.git 

# Expose ports.
EXPOSE 80

# Define default command.
CMD ["/bin/bash"]
