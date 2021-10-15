# Como executar?
Para executar esse projeto, é preciso iniciar o banco de dados Postgres com o docker rodando o seguinte comando:
```sh
docker build -t "projeto-museu" . && docker run -it --rm -d -p 5432:5432 projeto-museu
```
Apos isso, escolha a aplicação para Postgres de sua preferencie e execute respectivamente os scripts:
- **data.sql** para inserir os dados na base
- **queries.sql** para executar todas as consultas