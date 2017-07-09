FROM nginx
RUN apt-get update && apt-get install -y \
  wget sed \ 
&& mkdir -p /var/share/nginx/html/w3schools \
&& cd /var/share/nginx/html \
# && mv index.html index.html.bak \
&& wget https://raw.githubusercontent.com/techmore/blog/master/index.html \ 
&& sed -i.bak s/"MY BLOG"/Techmore/g index.html  \
&& sed -i.bak s/"Welcome to the blog of"//g index.html  \
&& sed -i.bak s/"unknown"/Get more!/g index.html  \
&& cd /var/share/nginx/html/w3schools \
&& wget https://www.w3schools.com/w3images/woods.jpg \
&& wget https://www.w3schools.com/w3images/bridge.jpg \
&& wget https://www.w3schools.com/w3images/workshop.jpg \ 
&& wget https://www.w3schools.com/w3images/gondol.jpg \
&& wget https://www.w3schools.com/w3images/skies.jpg \
&& wget https://www.w3schools.com/w3images/rock.jpg \
&& wget https://www.w3schools.com/w3images/avatar_g.jpg \



