

install: 
	cd app && bundle install

run:
	cd app && bundle exec rackup -p 8080

cloud-build-test:
	cd app/ && docker build \
	    -t gcr.io/ricc-demos/github.com/palladius/gcp-sinatra-clouddeploy:$COMMIT_SHA \
	    -f Dockerfile \
	    .
