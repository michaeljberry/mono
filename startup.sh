# Create new repo directory
echo What is your new repo called?
read repo

echo Where do you want to develop your app?
read location

mkdir -p $location/$repo

# Create lumen directory
echo Creating the Lumen directory
mkdir -p $location/$repo/lumen

# Create Vue directory
echo Creating the Vue directory
mkdir -p $location/$repo/vue

# Setup Docker containers
echo Setting up your new Docker environment and containers
mkdir -p $location/$repo/docker
mkdir -p $location/$repo/docker/lumen
mkdir -p $location/$repo/docker/vue

# Copy over necessary Docker templates:
# docker-compose.yml.template -> {root}/docker-compose.yml
echo Copying docker-compose.yml
cp ./docker/docker-compose.yml.template $location/$repo/docker-compose.yml

# Dockerfile.app.template -> /{root}/docker/lumen/Dockerfile
echo Copying the app Dockerfile
cp ./docker/Dockerfile.app.template $location/$repo/docker/lumen/Dockerfile

# Dockerfile.vue.template -> /{root}/docker/vue/Dockerfile
echo Copying the vue Dockerfile
cp ./docker/Dockerfile.vue.template $location/$repo/docker/vue/Dockerfile