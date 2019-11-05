# Docker + React quickstart
Quickstart for developing React applications inside Docker

### Steps:

#### 1. Clone this repository
```
git clone https://github.com/adrgs/docker_react_quickstart
cd docker_react_quickstart
```
#### 2. Create the basic react application using create-react-app 
```
create-react-app .
```
#### 3. Modify image_name from Makefile with the name you want
```
sed -i 's/image_name/new_name/g' Makefile
```
#### 4. a) Run using make
```
make build && make run
```
#### 4. b) Run using the docker commands
```
docker image build -t image_name .
docker container run -d -it -p 3000:3000 -p 35729:35729 -v $(pwd):/app image_name
```
#### 5. Done! Your react application should now be live on http://localhost:3000/