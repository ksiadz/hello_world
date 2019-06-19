DOCKER_REGISTRY ?= localhost:5000
APP_NAME ?= $$(basename $$(pwd))
VERSION ?= $$(git rev-parse --short HEAD)


build: ## Build the container
	docker build -t ${DOCKER_REGISTRY}/${APP_NAME}:${VERSION} .


publish: build
	docker push ${DOCKER_REGISTRY}/${APP_NAME}:${VERSION}