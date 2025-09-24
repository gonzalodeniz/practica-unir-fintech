.PHONY: all $(MAKECMDGOALS)

run:
	docker run --rm \
		--volume `pwd`:/opt/app \
		--env PYTHON_PATH=/opt/app \
		-w /opt/app \
		python:3.6-slim \
		bash -c "pip install googletrans==3.1.0a0 && python3 main.py palabras.txt yes yes"

run-local: 
    python3 main.py words.txt yes
