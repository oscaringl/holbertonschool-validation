# Awesome Inc. website Docs
Welcome to our site, please follow the next information in order to have a working website.

## Prerequisites
- Hugo v0.80+ must be used.
- Usage of Git Submodules is prohibited.
- Use the theme "ananke" for the website by following:
	- `Note for non-git users` at the [Step 3](https://docs.edg.io/guides/sites_frameworks/getting_started/hugo).
- The website is expected to be generated into ./dist folder but this folder should be **absent** from the repo.

## Lifecycle
- post
- build
- clean
- help
- run
- stop
- test
- lint
- unit-tests
- integration-tests
- check
- validate

## Build Workflow
Create a new workflow named module3_task1 with only the following steps:
- Clone the repository,
- Use ubuntu-22.04 as the virtual machine.
- Position yourself in the correct directory and execute the command make help to validate that the Makefile is present and implements the help and build targets.

This workflow must be triggered:
- Each time there is new code pushed on your repository,
- And once per day (whatever time you want).