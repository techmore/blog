#!/bin/bash

# https://store.docker.com/images/nginx

# Create Blog folder which has all posts and edited index file to push up to server
mkdir -p blog
cd blog
wget https://raw.githubusercontent.com/techmore/blog/master/index.html
wget https://drive.google.com/open?id=0B4-3kJmbL6qNQS1NVHBWLWJXNkU
mv open?id=0B4-3kJmbL6qNQS1NVHBWLWJXNkU techmore.png
sed -i.bak s/"MY BLOG"/Techmore/g index.html
sed -i.bak s/"Welcome to the blog of"//g index.html
sed -i.bak s/unknown/"Get more\\!"/g index.html
sed -i.bak s/\/w3images\/avatar_g.jpg/techmore.png/g index.html
cd ..

wget https://raw.githubusercontent.com/techmore/blog/master/july-2017.sh
chmod 775 july-2017.sh
./july-2017.sh



# CREATE DOCKER FILE
cat <<EOF >> Dockerfile 
FROM nginx
COPY blog /usr/share/nginx/html
EOF

docker build -t some-content-nginx .
docker run --name some-nginx -d -p 8080:80 some-content-nginx
