FROM python:3.13.1

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2 pyarrow

WORKDIR /app
COPY scripts/ingest_data.py ingest_data.py 
COPY data data

ENTRYPOINT [ "python", "ingest_data.py" ]