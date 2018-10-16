Basic Docker image with `geopandas` and all dependencies installed (based
on the standard `library/python*` images). The following images are available:

* `geopandas-base:2.7`: Based on `python:2.7` image
* `geopandas-base:3.6`: Based on `python3.6` image

These are publicly available on DockerHub as `jonduckworthdg/geopandas-base:*`.

# Build Images

```bash
# Will build all available images
make build
```

# Test Images

**Note: If you plan on running tests makes sure you use the `--recurse-submodules` option when cloning and/or pulling to get the `geopandas` repo in the test directory.**

Runs the geopandas test suite against each built image (must run `make build` first).

```bash
make test
```
