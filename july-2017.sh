#!/bin/bash

#sed -i.bak s/"<\\!-- Blog entry 1 -->"/

# IMAGE TO REPLACE
#blog.jpg
wget https://raw.githubusercontent.com/techmore/blog/master/blog.jpg
sed -i.bak s=/w3images/woods.jpg=blog.jpg=g index.html

# BLOG TITLE
sed -i.bak s/"TITLE HEADING"/"Day 1 Blogging"/g index.html
    
# Blog Description
sed -i.bak s/"Title description, "/"Creation of a reuseable blog, "/g index.html
    
# Date
sed -i.bak s/"April 7, 2014"/"July 7, 2017"/g index.html

# Content
sed -i.bak s/'blog-post.'/'I hate Macish.'/g
