# Dockerized Hiptext

Original Hiptext: https://github.com/jart/hiptext

[![asciicast](https://asciinema.org/a/x3KVZ6GxVYo5sKa8erd9BSCfv.svg)](https://asciinema.org/a/x3KVZ6GxVYo5sKa8erd9BSCfv)

Source pulled in docker image: https://github.com/incognito/hiptext

Hosted on Dockerhub at: https://hub.docker.com/_/statagroup/hiptext

```
docker run  -it --rm \
  --volume $PWD:/app  statagroup/hiptext:0.2 \
  hiptext [...flags] <file>
```

In the above example, all files in the present working directory will be mounted at `/app`, and then the image will be output.

A listing of available flags is possible with `--helpshort` or `--help`.
