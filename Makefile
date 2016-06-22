VERSIONS := 9.3 9.4 9.5

all: $(VERSIONS)

$(VERSIONS):
	sed -e 's/VERSION/$@/' $@/Dockerfile > ./Dockerfile
	docker build -t steinnes/postfast:$@ .
	rm Dockerfile
	docker push steinnes/postfast:$@


.PHONY: $(VERSIONS)
