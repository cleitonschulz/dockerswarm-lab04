docker service create --name my-web --publish published=8080,target=80 --replicas 3 nginx
