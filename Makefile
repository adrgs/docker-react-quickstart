build:
	docker image build -t image_name .
run:
	docker container run -d -it -p 3000:3000 -p 35729:35729 -v $(PWD):/app image_name 
