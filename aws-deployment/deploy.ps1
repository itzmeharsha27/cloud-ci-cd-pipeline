# Pull latest Docker image
docker pull yourusername/cloudapp

# Stop & remove old container
docker stop app -ErrorAction SilentlyContinue
docker rm app -ErrorAction SilentlyContinue

# Run new container
docker run -d -p 80:3000 --name app yourusername/cloudapp
