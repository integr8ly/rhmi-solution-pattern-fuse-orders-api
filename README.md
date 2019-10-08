# RHMI Solution Pattern No. 1 Fuse Service

## API Description
This is an internal API that exposes order entries contained in the system.

### Generation
You can regenerate this service by uploading the *orders-internal.yaml* file
to Apicurio Studio.

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
