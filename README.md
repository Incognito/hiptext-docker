# Dockerized Hiptext

Original Hiptext: https://github.com/jart/hiptext

Source used in docker image: https://github.com/incognito/hiptext

Source of the images at https://hub.docker.com/_/statagroup/hiptext

```
docker run  -it --rm \
  --volume $PWD:/app  statagroup/hiptext \
  hiptext --macterm <file>
```
