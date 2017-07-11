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
sed -i.bak s/"My Name"/Techmore/g index.html
sed -i.bak s/"I want to share my world with you."/"An effort to simplify the documentation of my efforts."/g index.html

wget https://raw.githubusercontent.com/techmore/blog/master/july-2017.sh
chmod 775 july-2017.sh
./july-2017.sh

cat <<EOF >> index.html

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  <div class="w3-card-2 w3-margin w3-margin-top">
  <img src="techmore.png" style="width:100%">
    <div class="w3-container w3-white">
      <h4><b>Techmore</b></h4>
      <p>An effort to document some projects.</p>
    </div>
  </div><hr>
  
  <!-- Posts -->
<!--  <div class="w3-card-2 w3-margin">
    <div class="w3-container w3-padding">
      <h4>Popular Posts</h4>
    </div>
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16">
        <img src="/w3images/workshop.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Lorem</span><br>
        <span>Sed mattis nunc</span>
      </li>
      <li class="w3-padding-16">
        <img src="/w3images/gondol.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Ipsum</span><br>
        <span>Praes tinci sed</span>
      </li> 
      <li class="w3-padding-16">
        <img src="/w3images/skies.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Dorum</span><br>
        <span>Ultricies congue</span>
      </li>   
      <li class="w3-padding-16 w3-hide-medium w3-hide-small">
        <img src="/w3images/rock.jpg" alt="Image" class="w3-left w3-margin-right" style="width:50px">
        <span class="w3-large">Mingsum</span><br>
        <span>Lorem ipsum dipsum</span>
      </li>  
    </ul>
  </div>
  <hr> 
 -->
  <!-- Labels / tags -->
<!--  <div class="w3-card-2 w3-margin">
    <div class="w3-container w3-padding">
      <h4>Tags</h4>
    </div>
    <div class="w3-container w3-white">
    <p><span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">London</span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">DIY</span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Family</span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Shopping</span>
      <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Games</span>
    </p>
    </div>
  </div>
  -->
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>

<!-- Footer -->
<footer class="w3-container w3-dark-grey w3-padding-32 w3-margin-top">
<!--  <button class="w3-button w3-black w3-disabled w3-padding-large w3-margin-bottom">Previous</button> -->
<!--  <button class="w3-button w3-black w3-padding-large w3-margin-bottom">Next »</button>  -->
</footer>

</body>
</html>
EOF

cd ..


# CREATE DOCKER FILE
cat <<EOF >> Dockerfile 
FROM nginx
COPY blog /usr/share/nginx/html
EOF

docker build -t some-content-nginx .
docker run --name blog-nginx -d -p 8080:80 some-content-nginx
