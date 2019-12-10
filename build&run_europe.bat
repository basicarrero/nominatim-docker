docker build -t nominatim --build-arg POSTGIS_VERSION=2.5 --build-arg BUILD_THREADS=4 --build-arg BUILD_MEMORY=8GB --build-arg OSM2PGSQL_CACHE=2000 --build-arg RUNTIME_THREADS=2 --build-arg RUNTIME_MEMORY=8GB --build-arg PBF_URL=http://download.geofabrik.de/europe/spain-latest.osm.pbf --build-arg REPLICATION_URL=http://download.geofabrik.de/europe-updates .
FOR /F "tokens=*" %%g IN ('hostname') do (SET VAR=%%g)
docker run --name nominatim --restart=always -d -h %VAR%/nominatim -p 80:80 nominatim
pause