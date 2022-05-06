When using the reverse proxy removing the line

`ENV REACT_APP_BACKEND_URL=http://localhost:8080`

from frontend Dockerfile works since we notice that the __example-frontend/src/util/pingpong.js__ by default sets the baseUrl to __/api__ if the variable __REACT_APP_BACKEND_URL__ is not defined

then ran

`docker-compose up --build`

for the changes to take effect