
docker service create --name proxy --publish published=80,target=80,protocol=tcp,mode=host --mount type=bind,source=/apps/service-proxy/passfile,target=/etc/nginx/.htpasswd --mount type=bind,source=/apps/service-proxy/default.conf,target=/etc/nginx/conf.d/default.conf --mode replicated --replicas 1 nginx

