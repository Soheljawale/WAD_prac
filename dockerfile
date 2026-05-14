FROM ubuntu:latest

LABEL maintainer="student@lab"

RUN apt update && \
    apt install -y apache2 && \
    echo "Dockerfile execution successful" > /home/test.txt

CMD ["/bin/bash"]


# To build the Docker image, run the following command in the terminal:
    ## Create project folder
    # mkdir docker-demo
    # cd docker-demo

    ## Create Dockerfile

    ## Build the Docker image
    # docker build -t mydockerimage .

    ## Run the Docker container
    # docker run -d -p 80:80 --name mydockercontainer mydocker

    ## Verify Output
    # cat /home/test.txt

    ## Stop container
    # docker stop <container_id>

    ## Remove container
    # docker rm <container_id>

    ## Remove image
    # docker rmi mydockerimage