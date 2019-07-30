FROM nginx

# Update apt
RUN apt-get update

# Debian has a bug
RUN mkdir -p /usr/share/man/man1

# Deploy dependencies
RUN apt-get update && apt-get install -y make python3-pip git graphviz plantuml openjdk-8-jdk-headless

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

