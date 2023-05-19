build: ## Generate the website from markdown
	$(MAKE) lint
	go build -o awesome-api


run: ## Run the application
	./awesome-api >./awesome-api.log 2>&1 &


stop: ## Stop the app
	-kill "$$(pgrep awesome-api)"


clean: stop ## Cleanup the content of the 'dist/' folder
	$(MAKE) stop
	rm -rf awesome-api awesome-api.log go.sum


test: ## Tests the application
	$(MAKE) unit-tests
	$(MAKE) integration-tests


lint: ## Checks for semantic errors
	golangci-lint run


unit-tests: ## Runs unit-tests
	go test -v -short -coverprofile=coverage-units.out


integration-tests: ## 
	@go test -v -coverprofile=coverage-integrations.out


help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'