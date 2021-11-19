APPNAME = "palladius/hello-sinatra"
VERSION = $(shell cat VERSION)

build:
	docker build . -t $(APPNAME):v$(VERSION) -f Dockerfile

docker-compose:
	docker compose up

run-local: build
	docker run -it -p 8080:8080 --env APP_ENV=DockRunMakeEnv $(APPNAME):v$(VERSION) rackup --host 0.0.0.0 -p 8080
run-local-p8080-fast:
	docker run -it -p 8080:8080 $(APPNAME):v$(VERSION)
run-local-bash-fast:
	docker run -it -p 8080:8080 $(APPNAME):v$(VERSION) bash

list:
	docker image list
