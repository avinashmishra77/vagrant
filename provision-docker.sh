# The docker daemon always runs as the root user. 
# Best practice:
# To use a non-root user to manage docker daemon.
# To prevent from using sudo while using docker commands:
# -- Create a separate docker group
# -- Add the docker user to docker group
sudo useradd -c "Docker user" -m -s /bin/bash docker

 
# Install required packages for docker
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

# Add the docker-repo to the package manager
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Enable/use the edge repository
sudo yum-config-manager --enable docker-ce-edge



#sudo usermod -aG docker docker


# Install docker
sudo yum install -y docker-ce

# Start docker
sudo systemctl start docker

# Start docker on boot
sudo systemctl enable docker




