#!/bin/bash

#sed -i.bak s/"<\\!-- Blog entry 1 -->"/

# IMAGE TO REPLACE
#blog.jpg
wget https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjoptrBpf3UAhUBGD4KHewJCYYQjRwIBw&url=https%3A%2F%2Fpixabay.com%2Fen%2Fwordpress-blog-post-cms-265132%2F&psig=AFQjCNH1OJoz3ednn8ycJoQHoZYS51syFA&ust=1499727241398609
mv wordpress-265132_960_720.jpg blog.jpg
sed -i.bak s/\/w3images\/woods.jpg/blog.jpg/g index.html

# BLOG TITLE
sed -i.bak s/"TITLE HEADING"/"Day 1 Blogging"/g index.html
    
# Blog Description
sed -i.bak s/"Title description, "/"Creation of a reuseable blog, "/g index.html
    
# Date
sed -i.bak s/"April 7, 2014"/"July 7, 2017"/g index.html

# Content
# sed -i.bak s/"Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. "/"Is this working"/g