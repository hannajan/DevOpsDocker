[Link to project in Docker Hub](https://hub.docker.com/r/hannajan/unicafe)

# Unicafe

A simple application to give feedback.

## To run application

After pulling the image in the project directory, you can run:

`docker build . -t unicafe`

to build image and:

`docker run -p 3000:3000 unicafe`

to run the application at [http://localhost:3000](http://localhost:3000)