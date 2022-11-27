tag ?= jenkins.cac
version ?=latest

.PHONY: build run

common:
	@echo 'For building docker image again use : make build'
	@echo 'For running docker container : make run'

build:
	@docker build . -t $(tag):$(version)
run:
	@docker run --rm -it --name $(tag) -p 8080:8080 $(tag):$(version)