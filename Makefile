REPO_URL=https://github.com/plutoniumstarfish/gl_clientrace_docker_nginx_website
IMAGE_NAME=docker_nginx_resume
CONTAINER_NAME=docker_nginx_resume
PORT=8080

.PHONY: all clone build run stop clean

all: clone build run

clone:
	@if [ ! -d "gl_clientrace_docker_nginx_website" ]; then \
		git clone $(REPO_URL); \
	fi

build:
	cd gl_clientrace_docker_nginx_website && sudo docker build -t $(IMAGE_NAME) .

run:
	sudo docker run -d \
		--name $(CONTAINER_NAME) \
		-p $(PORT):80 \
		$(IMAGE_NAME)

stop:
	sudo docker stop $(CONTAINER_NAME) || true
	sudo docker rm $(CONTAINER_NAME) || true

clean: stop
	sudo docker rmi $(IMAGE_NAME) || true
