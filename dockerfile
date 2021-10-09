FROM postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB postgres-db
COPY sales.sql /docker-entrypoint-initdb.d/