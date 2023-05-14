build:
	hugo -s . -d dist/

clean:
	rm -rf dist/*

post:
	hugo new --kind post posts/$(POST_NAME).md
