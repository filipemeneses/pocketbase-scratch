pocketbase-scratch
---

# Usage

To run detached docker container listening on port `3000` with volume `pb_data`

```sh
docker run -d --name=pocketbase -v=pb_data:/pb_data -p 3000:8090 filipemeneses/pocketbase-scratch serve --http=0.0.0.0:8090
docker logs pocketbase
# > Server started at: http://0.0.0.0:8090
#   - REST API: http://0.0.0.0:8090/api/
#   - Admin UI: http://0.0.0.0:8090/_/
```

> An official image may be released based on this image, see https://github.com/pocketbase/pocketbase/issues/92. 

# Building and pushing example

```sh
docker build . --tag filipemeneses/pocketbase-scratch:0.20.7-linux-armv7
docker push filipemeneses/pocketbase-scratch:0.20.7-linux-armv7
```