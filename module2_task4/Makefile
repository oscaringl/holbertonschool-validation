build: ## Generate the website from markdown
	./setup.sh
	make check
	hugo

clean: ## Cleanup the content of the 'dist/' folder
	rm -rf dist/

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	-hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 2022-11-20T09:03:20-08:00\ndraft: false\n---" > content/posts/$(POST_NAME).md

check:## Check if post is valid
	markdownlint -f ./content/posts/*.md
	markdown-link-check ./content/posts/*.md


validate:## Validate the index
	-./w3c_validator.py ./dist/index.html

help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
