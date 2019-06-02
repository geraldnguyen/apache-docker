Sample Apache Reverse Proxy setup with Docker
==================

`buil-main-docker.sh` builds and runs the main Apache server docker that serves content from `public-html` directory while perform *reverse proxy* to the Api server docker for all requests matching `/api` route.

The main Apache server is constructed from the `Dockerfile` that overwrites default `httpd.config` with another that have `mod_proxy` and `mod_proxy_http` configured.

As we mocks the Api server by an Apache server, communication between the main server and the API server can be achieved by inter-container communication. That is, we link the mock API container to the main container using `--link 2nd-ary-docker:apiserver` option

```
docker run -dit --name test-apache-docker -p 8080:80 -v "$PWD/public-html:/usr/local/apache2/htdocs/ --link 2nd-ary-docker:apiserver test-apache-docker
```