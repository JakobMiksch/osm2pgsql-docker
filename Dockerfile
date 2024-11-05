ARG OSM2PGSQL_VERSION

FROM alpine/git:v2.45.2 AS repo-downloader

ARG THEMEPARK_COMMIT_HASH
ARG REPO_URL=https://github.com/osm2pgsql-dev/osm2pgsql-themepark.git
ARG TARGET_PATH_REPO=/osm2pgsql-themepark

RUN git clone ${REPO_URL} ${TARGET_PATH_REPO} && \
    cd ${TARGET_PATH_REPO} && \
    git checkout ${THEMEPARK_COMMIT_HASH} && \
    rm -rf .git

FROM iboates/osm2pgsql:${OSM2PGSQL_VERSION}

ENV LUA_PATH /osm2pgsql-themepark/lua/?.lua;;

COPY --from=repo-downloader /osm2pgsql-themepark /osm2pgsql-themepark
