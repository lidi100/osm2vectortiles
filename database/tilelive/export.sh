#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

SOURCE_PROJECT_DIR=${SOURCE_PROJECT_DIR:-/data/tm2source}
EXPORT_DIR=${EXPORT_DIR:-/data/export}

OSM_DB=${OSM_DB:-osm}
OSM_USER=${OSM_USER:-osm}
OSM_PASSWORD=${OSM_PASSWORD:-osm}

DB_SCHEMA=public
PG_CONNECT="postgis://$OSM_USER:$OSM_PASSWORD@$DB_PORT_5432_TCP_ADDR/$OSM_DB"

tl copy "tmsource://$SOURCE_PROJECT_DIR" "mbtiles://$EXPORT_DIR/tiles.mbtiles"
