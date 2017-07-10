#!/bin/bash

# IMAGE TO REPLACE
#blog.jpg
wget https://raw.githubusercontent.com/techmore/blog/master/blog.jpg
sed -i.bak s=/w3images/woods.jpg=blog.jpg=g index.html

cp index.html July-9-2017.html

cat <<EOF >> index.html

<!-- Blog entries -->
<div class="w3-col l8 s12">

<div class="w3-card-4 w3-margin w3-white">
    <img src="blog.jpg" alt="Nature" style="width:20%">
    <div class="w3-container">
      <h3><b>Day 1 Blogging</b></h3>
      <h5>Creation of a reuseable blog, <span class="w3-opacity">July 9, 2017</span></h5>
    </div>

    <div class="w3-container">
      <p>I Hate Macish</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          <form action="July-9-2017.html">
    <input type="submit" value="READ MORE" />
        </form>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-tag">0</span></span></p>
        </div>
      </div>
    </div>
  </div>
  <hr>
<!-- END BLOG ENTRIES -->
</div>

EOF

cat <<EOF-july >> July-9-2017.html

<!-- Blog entries -->
<div class="w3-col l8 s12">

<div class="w3-card-4 w3-margin w3-white">
    <img src="blog.jpg" alt="Nature" style="width:20%">
    <div class="w3-container">
      <h3><b>Day 1 Blogging</b></h3>
      <h5>Creation of a reuseable blog, <span class="w3-opacity">July 9, 2017</span></h5>
    </div>

    <div class="w3-container">
      <p>I Hate Macish</p>
      <div class="w3-row">
        <div class="w3-col m8 s12">
          <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
        </div>
        <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-tag">0</span></span></p>
        </div>
      </div>
    </div>
  </div>
  <hr>
<!-- END BLOG ENTRIES -->
</div>

EOF-july

