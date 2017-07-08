FROM nginx
COPY static-html-directory /usr/share/nginx/html
RUN apt-get update && apt-get install -y \
  wget \ 
&& mkdir -p /var/share/nginx/html/w3schools \
&& cd /var/share/nginx/html/w3schools \
&& wget https://www.w3schools.com/w3images/woods.jpg && \
&& wget https://www.w3schools.com/w3images/bridge.jpg && \
&& wget https://www.w3schools.com/w3images/workshop.jpg && \ 
&& wget https://www.w3schools.com/w3images/gondol.jpg && \
&& wget https://www.w3schools.com/w3images/skies.jpg && \
&& wget https://www.w3schools.com/w3images/rock.jpg && \
wget https://www.w3schools.com/w3images/avatar_g.jpg


