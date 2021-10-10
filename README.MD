# Simple Database
This is a simple repo to create and populate a PostgresSQL database and run it inside of a docker container

Before we can interact with our database we first need to build and run it using the commnands below.

 Within our `dockerfile` you can see we pass a `sql` file to the command `/docker-entrypoint-initdb.d/` (this only works for empty containers)

This sql file is executed when the container is initialised so we can prepopulate it with data. 
Some sample `sql` scripts have been provided which you can experiement with

If we want to stop a running image and remove it we can use the command below to do both in a single command

## Build image
`sh build.sh`

## Run container
`sh run.sh`

## Stop the running container container and remove it
`sh stop-remove.sh`
