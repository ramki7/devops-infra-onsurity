docker run -ti onsurity/csvserver (error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory)

docker run -ti -v /apporchid/docker/solution/inputFile:/csvserver/inputdata onsurity/csvserver --name csvserver

docker exec -ti csvserver /bin/bash

#check the process in container using "netstat -ntpl" cmd

#able to find the port of the application in container

#then stop container restart it and port forward to the container

docker run -d  -p 9393:9300 -v /apporchid/docker/test/inputFile:/csvserver/inputdata onsurity/csvserver

#kill container and restart it

docker run -d  -p 9393:9300 -v /apporchid/docker/test/inputFile:/csvserver/inputdata --env=CSVSERVER_BORDER=Orange onsurity/csvserver
