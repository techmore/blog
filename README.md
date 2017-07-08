# blog
Set up a blog based on w3schools design

First run this

mkdir -p /var/share/nginx/html/w3schools
cd /var/share/nginx/html/w3schools
wget https://www.w3schools.com/w3images/woods.jpg && \
wget https://www.w3schools.com/w3images/bridge.jpg && \
wget https://www.w3schools.com/w3images/workshop.jpg && \ 
wget https://www.w3schools.com/w3images/gondol.jpg && \
wget https://www.w3schools.com/w3images/skies.jpg && \
wget https://www.w3schools.com/w3images/rock.jpg && \
wget https://www.w3schools.com/w3images/avatar_g.jpg


docker run --name some-nginx -d -p 8080:80 some-content-nginx
