# gl_clientrace_docker_nginx_website
A sample dockerize nginx container and host in killercoda

sudo docker build -t docker_nginx_resume .

sudo docker run -d \
  --name docker_nginx_resume_container \
  -p 8080:80 \
  docker_nginx_resume



#testing using Killercoda

clone the repository
build and run the image

click the burger icon and select Traffic/ Ports

then on Custom Ports
set 8080 sand click Access
