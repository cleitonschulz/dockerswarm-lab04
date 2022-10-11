docker service create --name my-web --publish published=8081,target=80 --replicas 3 nginx
