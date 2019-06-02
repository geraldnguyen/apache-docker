docker run -dit --name 2nd-ary-docker -p 8081:80 -v "$PWD/api":/usr/local/apache2/htdocs/ httpd:2.4
