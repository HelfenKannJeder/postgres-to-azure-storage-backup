# Docker Image to Backup Postgres to Azure Blob Storage

## Build

Create a docker image with the following command:
```bash
docker build -t helfenkannjeder/postgresbackup .
```

## Test

You can test the docker image just buy typing `docker-compose up`.
The URL in `docker-compose.yml` needs to contain a valid URL to upload the generated SQL file.
You can follow [the instructions to generate a SAS token](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview#sas-token) from the Azure website.
