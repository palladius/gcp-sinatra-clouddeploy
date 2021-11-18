

install: 
	cd app && bundle install

run:
	cd app && bundle exec rackup -p 8080