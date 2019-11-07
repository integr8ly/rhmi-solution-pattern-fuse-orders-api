# RHMI Solution Pattern No. 1 Fuse Service

## API Description
This is an internal API that exposes order entries contained in the system.

### Generation
You can regenerate this service by uploading the *orders-internal.yaml* file
to Apicurio Studio.

### Build an Image

[source-to-image (s2i)](https://docs.okd.io/latest/creating_images/s2i.html) is
used to generate builds.

The commands are as follows once you have Docker and s2i installed:

```bash
export CONTAINER_NAME=rhmi-lab-internal-fuse-api
docker pull registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift 
s2i build . registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift $CONTAINER_NAME
```

### Database Configuration

A PostgreSQL 9.6 instance is necessary to use this service. The connection
details can be defined in *src/main/resources/application.yml* or by setting
the following environment variables:

* PG_HOSTNAME
* PG_DATABASE
* PG_USERNAME
* PG_PASSWORD

The following table must be created in the database: 

```sql
CREATE TABLE received_orders (
  id serial PRIMARY KEY,
  product text NOT NULL,
  quantity int NOT NULL,
  message_id text NOT NULL,
  datetime timestamp NOT NULL
);
```

### Building
```bash
mvn clean package
```

### Running Locally
```bash
mvn spring-boot:run
```

### API Docs Endpoint:
```bash 
curl http://localhost:8080/openapi.json
```

## Running on OpenShift
```bash
mvn fabric8:deploy
```
