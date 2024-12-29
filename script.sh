#!/usr/bin/env bash

image_exists() {
if [[ $(docker images -q) ]]; then 
return 0 
else 
return 1
fi
}
fetch_name() {
docker images --format "{{.Repository}}" | head -n 1
}

build_images() {
echo "Building the docker image..."
docker build -t ascii-docker .
if [[ $? -ne 0 ]]; then 
echo "Error : failed to build docker image."
exit 1
fi    
}

run_container() {
    local image_name=$1
    echo "running the docker container..."
docker stop ascii-docker-container 2>/dev/null 
docker rm ascii-docker-container 2>/dev/null    

docker run --name ascii-docker-container -p 8080:8080 "$image_name"
    if [[ $? -ne 0 ]]; then 
    echo "error : failed to start docker container."
    exit 1
    else 
    echo "Docker container started successfully. Access the webserver at http://localhost:8080"
fi
}

if image_exists; then 
echo "image exists" 
image_name=$(fetch_name)
run_container "$image_name"

else 
echo "no images"
build_images
image_name="ascii-docker"
run_container "$image_name"
fi 