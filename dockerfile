FROM postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB postgres-db
COPY blank.sql /docker-entrypoint-initdb.d/