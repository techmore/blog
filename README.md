# blog
https://store.docker.com/images/nginx

# Create Blog folder which has all posts and edited index file to push up to server
mkdir -p blog
cd blog
wget https://raw.githubusercontent.com/techmore/blog/master/index.html
sed -i.bak s/"MY BLOG"/Techmore/g index.html
sed -i.bak s/"Welcome to the blog of"//g index.html
sed -i.bak s/unknown/"Get more\\!"/g index.html
cd /var/share/nginx/html/w3schools

# CREATE DOCKER FILE
cat <<EOF >> Dockerfile 
FROM nginx
COPY static-html-directory /usr/share/nginx/html
EOF

docker build -t some-content-nginx .
docker run --name some-nginx -d -p 8080:80 some-content-nginx
