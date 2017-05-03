CWD := $(shell readlink -en $(dir $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))))
IMAGE := "jamrizzi/make4docker:latest"
DOCKERFILE := $(CWD)/Dockerfile

.PHONY: all
all: fetch_dependancies sweep build

.PHONY: build
build:
	docker build -t $(IMAGE) -f $(DOCKERFILE) $(CWD)
	$(info built $(IMAGE))

.PHONY: pull
pull:
	docker pull $(IMAGE)
	$(info pulled $(IMAGE))

.PHONY: push
push:
	docker push $(IMAGE)
	$(info pushed $(IMAGE))

.PHONY: run
run:
	docker run --name some-$(IMAGE) --rm $(IMAGE)
	$(info ran $(IMAGE))
	
.PHONY: ssh
ssh:
	dockssh $(IMAGE)
	
.PHONY: essh
essh:
	dockssh -e $(IMAGE)

.PHONY: clean
clean:
	# rm -rf ./stuff/to/clean
	$(info cleaned)

.PHONY: fetch_dependancies
fetch_dependancies: docker
	$(info fetched dependancies)
.PHONY: docker
docker:
ifeq ($(shell whereis docker), $(shell echo docker:))
	curl -L https://get.docker.com/ | bash
endif
	$(info fetched docker)
