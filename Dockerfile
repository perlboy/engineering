FROM nginx

# Update apt
RUN apt-get update

# Deploy dependencies
RUN apt-get install -y make python3-pip git

# Transfer the sphinx over
COPY . /opt/engineering

# Now get into baseline directory
WORKDIR /opt/engineering

# Figure out requirements
RUN pip3 install -r requirements.txt

# And compile it to html
RUN make clean html

# Now we transfer it into place for nginx
RUN rm -fr /usr/share/nginx/html
RUN cp -R /opt/engineering/build/html /usr/share/nginx/html

# Now uninstall python3-pip and make
RUN apt-get remove -y make python3-pip git
RUN apt-get autoremove -y

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
