VERSIONS := 9.3 9.4 9.5 9.6

all: $(VERSIONS)

$(VERSIONS):
	sed -e 's/VERSION/$@/' $@/Dockerfile > ./Dockerfile
	docker build -t steinnes/fastgres:$@ .
	rm Dockerfile
	docker push steinnes/fastgres:$@


.PHONY: $(VERSIONS)
