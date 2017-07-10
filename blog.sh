#!/bin/bash

# https://store.docker.com/images/nginx

# Create Blog folder which has all posts and edited index file to push up to server
mkdir -p blog
cd blog
wget https://raw.githubusercontent.com/techmore/blog/master/index.html
wget https://raw.githubusercontent.com/techmore/blog/master/techmore.png
sed -i.bak s/"MY BLOG"/Techmore/g index.html
sed -i.bak s/"Welcome to the blog of"//g index.html
sed -i.bak s/unknown/"Get more\\!"/g index.html
sed -i.bak s=/w3images/avatar_g.jpg=techmore.png=g index.html
sed -i.bak s/"My Name"/Techmore.co/g index.html
sed -i.bak s/"Just me, myself and I, exploring the universe of uknownment. I have a heart of love and a interest of lorem ipsum and mauris neque quam blog. I want to share my world with you."/"An effort to simplify the documentation of my efforts."/g .index.html

wget https://raw.githubusercontent.com/techmore/blog/master/july-2017.sh
chmod 775 july-2017.sh
./july-2017.sh

cd ..


# CREATE DOCKER FILE
cat <<EOF >> Dockerfile 
FROM nginx
COPY blog /usr/share/nginx/html
EOF

docker build -t some-content-nginx .
docker run --name some-nginx -d -p 8080:80 some-content-nginx
