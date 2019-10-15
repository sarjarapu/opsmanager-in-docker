# Ops Manager in Docker Containers

> CAUTION: Do not use this `Production` environment. This option is not supported by the Technical Support Engineers of MongoDB

## How to run

Deploy the Ops Manager in a docker containers using the following commands. The process usually takes about 4-5 min for the initialization of the Ops Manager for the very first time.

```bash
docker-compose build
docker-compose up -d
docker logs --follow opsmanager
# If you happend to see below output then your Ops Manager is all up and running
## Start Backup Daemon...[  OK  ]
## Successfully started the Ops Manager.
# Ctrl + C to exit

# Open browser and navigate to the url http://<docker-host-name>:8888
# Register and configure the application

# When you are all done shutdown all the of the Ops Manager components
docker-compose down
```
