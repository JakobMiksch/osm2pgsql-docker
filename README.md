# osm2pgsql Docker Image with Themepark

Docker image for [osm2pgsql](https://github.com/osm2pgsql-dev/osm2pgsql) with additional [Themepark](https://github.com/osm2pgsql-dev/osm2pgsql-themepark).

```shell
# build locally
docker build \
  --build-arg OSM2PGSQL_VERSION=2.0.0  \
  --build-arg THEMEPARK_COMMIT_HASH=b26afa5  \
  --tag ghcr.io/jakobmiksch/osm2pgsql-docker \
  .
```
