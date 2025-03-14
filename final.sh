-e #!/bin/bash

# Define container name (adjust if different)
CONTAINER_NAME="magical_dijkstra"
# doc-bd-a1_container

# Create local directory if it does not exist
mkdir -p bd-a1/service-result/s

# Copy files from container to local machine
docker cp $CONTAINER_NAME:/home/doc-bd-a1/res_dpre.csv bd-a1/service-result/
docker cp $CONTAINER_NAME:/home/doc-bd-a1/eda-in-1.txt bd-a1/service-result/
docker cp $CONTAINER_NAME:/home/doc-bd-a1/eda-in-2.txt bd-a1/service-result/
docker cp $CONTAINER_NAME:/home/doc-bd-a1/eda-in-3.txt bd-a1/service-result/
docker cp $CONTAINER_NAME:/home/doc-bd-a1/vis.png bd-a1/service-result/
docker cp $CONTAINER_NAME:/home/doc-bd-a1/k.txt bd-a1/service-result/

# Stop the container
docker stop $CONTAINER_NAME

echo "Files copied to bd-a1/service-result/ and container stopped."
