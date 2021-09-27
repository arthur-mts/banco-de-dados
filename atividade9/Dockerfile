FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE atividade_9

ADD schema.sql /docker-entrypoint-initdb.d/
