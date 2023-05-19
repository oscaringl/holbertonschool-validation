build: ## Generate the website from markdown
	./setup.sh
	make check
	hugo

clean: ## Cleanup the content of the 'dist/' folder
	-rm -r dist/

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	-hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 2022-11-20T09:03:20-08:00\ndraft: false\n---" > content/posts/$(POST_NAME).md

validate:## Validate the index
	-./w3c_validator.py ./dist/index.html

help:## Makefile help 
	-grep "##" Makefile | head -n -1 | tr -d '#'
