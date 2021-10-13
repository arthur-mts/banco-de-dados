FROM postgres:10.9

ENV POSTGRES_USER projeto-museu-root
ENV POSTGRES_PASSWORD projeto-museu-root
ENV POSTGRES_DB projeto-museu

ADD schema.sql /docker-entrypoint-initdb.d/
