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
- Always run the make target package
- Position yourself in the correct directory and execute the command make help to validate that the Makefile is present and implements the help and build targets.

This workflow must be triggered:
- Generate an archive when triggered by a tag
- Create a release with the archive and content of DEPLOY.md when triggered by a tag
- Behave the same as “module3_task2” when triggered by something else than a tag (e.g. archive without version name, and no release)
- Be enabled in GitHub Actions and must have been run successfully with a tag 1.0.0
