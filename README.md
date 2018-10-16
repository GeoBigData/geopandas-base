# Build Images

Basic Docker image with `geopandas` and all dependencies installed (based
on the standard `library/python*` images). The following images are available:

* `geopandas-base:2.7`: Based on `python:2.7` image
* `geopandas-base:3.6`: Based on `python3.6` image

These are publicly available on DockerHub as `jonduckworthdg/geopandas-base:*`.

```bash
# Will build all available images
make build
```

# Test Images

Runs the geopandas test suite against each built image (must run `make build` first).

```bash
make test
```
