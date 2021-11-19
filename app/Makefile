APPNAME = "palladius/hello-sinatra"
VERSION = $(shell cat VERSION)

APPNAME_TEST = palladius/hello-sinatra-test
APPNAME_TEST3 = palladius/hello-sinatra-try3

build:
	docker build . -t $(APPNAME):v$(VERSION) -f Dockerfile

build2:
	docker build . -t $(APPNAME_TEST):v$(VERSION) -f Dockerfile.backup

build3-and-run-bash:
	docker build . -t $(APPNAME_TEST3):v$(VERSION) -f Dockerfile.try3 && docker run -it $(APPNAME_TEST3):v$(VERSION) bash

docker-compose:
	docker compose up

run-local-p8080: 
	docker run -it -p 8080:8080 $(APPNAME):v$(VERSION)
run-local-bash: 
	docker run -it -p 8080:8080 $(APPNAME):v$(VERSION) bash

run-local2-p8082: 
	docker run -it -p 8082:8080 $(APPNAME_TEST):v$(VERSION)
run-local-bash2: 
	docker run -it -p 8082:8080 $(APPNAME_TEST):v$(VERSION) bash


list:
	docker image list