.PHONY: all test clean lint demo docker-build docker-run

all:
	$(MAKE) -C c_code_simulation all

test:
	$(MAKE) -C c_code_simulation test

demo:
	$(MAKE) -C c_code_simulation demo
	./c_code_simulation/demo

clean:
	$(MAKE) -C c_code_simulation clean

lint:
	$(MAKE) -C c_code_simulation lint

docker-build:
	docker compose build

docker-run:
	docker compose up
