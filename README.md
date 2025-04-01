#### To build container
```
docker build .
```

#### To run the container
```
docker run -p 3000:3000 [image_id]
```

#### To run container in background
```
docker run -d -p 3000:3000 [image_id]
```

#### To see processing status (active containers)
```
docker ps
```

#### To stop container from running
```
docker stop [container_name]
```

#### To see all containers
```
docker ps -a
```

#### To all the images
```
docker image ls
```

#### To remove containers
```
docker rm [container_name]
```

#### Run container and after stop automatically remove container from background
```
docker run -d --rm -p 3000:3000 [image_id]
```

#### Creating container with our own name
```
docker run -d --rm --name '[testapp]' -p 3001:3000 [image_id]
```

#### Giving name to image
```
docker build -t [image_name]:[version] .
```

#### To remove docker image
```
docker image ls
```
```
docker rmi [Repository_name]:[version] or [Image ID]
```


#### If we make any changes in exsiting code then we need to upgrade the version
+ First image of our project
```
docker build -t [image_name]:[version1] .
```

+ To run the container
```
docker run -d --rm --name '[container_name]' -p 3000:3000 [image_name]:[version1]
```

+ After making changes in the code we build docker image as
```
docker build -t [image_name]:[version2] .
```

+ To run the container (port changed if 3000 port is already running)
```
docker run -d --rm --name '[container_name]' -p 3001:3000 [image_name]:[version2]
```