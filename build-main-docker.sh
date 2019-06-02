docker build -t test-apache-docker .

docker run -dit --name test-apache-docker -p 8080:80 -v "$PWD/public-html":/usr/local/apache2/htdocs/ --link 2nd-ary-docker:apiserver test-apache-docker

