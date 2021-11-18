APPNAME = palladius/hello-sinatra


build:
	docker build . -t $(APPNAME) -f Dockerfile

build2:
	docker build . -t $(APPNAME)-test -f Dockerfile.backup

docker-compose:
	docker compose up

run-local-p8080: 
	docker run -it $(APPNAME)

run-local-bash: 
	docker run -it $(APPNAME) bash

run-local2: 
	docker run -it $(APPNAME)-test


list:
	docker image list