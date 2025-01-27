# Useful Scripts

This README provides essential scripts and instructions to set up and use a Docker-based environment for working with PostgreSQL and inserting data into tables. Follow these steps to get started:

## Step 1: Create a Custom Docker Network

First, create a custom Docker network that will be used for container and Docker Compose communication:

```bash
docker network create pg-network
```

## Step 2: Start the Docker Cluster
Start the Docker cluster using Docker Compose. This will launch the PostgreSQL database and any other services defined in your Docker Compose file:
```bash
docker compose up -d
```

## Step 3: Build the Docker Image
Build a Docker image named de_zoomcamp_25:latest using the provided Dockerfile:
```bash
docker build -t de_zoomcamp_25:latest .
```

Step 4: Run Docker Container to Insert Data into a Table
To insert data into a specific table within your PostgreSQL database, use the following command pattern. Replace the placeholders with your actual database details and CSV file path:

</br> bash:
```bash
docker run --rm \
--network pg-network \
de_zoomcamp_25:latest \
--user=root \
--password=root \
--host=db \
--port=5432 \
--db=ny_taxi \
--table=green_taxi_data \
--uri=data/green_tripdata_2019-10.csv
```

</br> powershell:
```powershell
docker run --rm `
--network pg-network `
de_zoomcamp_25:latest `
--user=root `
--password=root `
--host=db `
--port=5432 `
--db=ny_taxi `
--table=green_taxi_data `
--uri=data/green_tripdata_2019-10.csv
```

</br> bash:
```bash
docker run --rm \
--network pg-network \
de_zoomcamp_25:latest \
--user=root \
--password=root \
--host=db \
--port=5432 \
--db=ny_taxi \
--table=taxi_zone_data \
--uri=data/taxi_zone_lookup.csv
```

<br> powershell:
```powershell
docker run --rm `
--network pg-network `
de_zoomcamp_25:latest `
--user=root `
--password=root `
--host=db `
--port=5432 `
--db=ny_taxi `
--table=taxi_zone_data `
--uri=data/taxi_zone_lookup.csv
```