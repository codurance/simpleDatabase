docker rm $(docker stop $(docker container ls -q --filter name=postgres))