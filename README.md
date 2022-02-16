# nextjs-Docker


## Installation
````git clone https://github.com/Izzy3110/nextjs-Docker````

````cd nextjs-Docker````



### Description
Deploy a nextjs-app with docker
-----

## Build Container-Image
````
docker build --build-arg app_dir=app1 -t tabteam_app:latest ./
````

## Run Container image (interactive)
````
docker run -it -p 8080:80 -p 3000:3000 tabteam_app bash
````
container stopps at "exit"


## Run Container image (interactive)
````
docker run -p 8080:80 -p 3000:3000 tabteam_app
````
