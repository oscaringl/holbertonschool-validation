build: ## Generate the website from markdown
	@hugo
	@go build -o awesome-api

run: ## Run the application
	./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the app
	-kill "$$(pgrep awesome-api)"

clean: stop ## Cleanup the content of the 'dist/' folder
	-kill "$$(pgrep awesome-api)"
	rm -rf awesome-api awesome-api.log go.sum

test: ## Tests the application
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
