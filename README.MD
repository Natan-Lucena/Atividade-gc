# Comando para executar o build:

```bash
docker build -t minha-app-comidas .
```

# Comando para rodar a imagem na porta 80

```bash
docker run -d --name comidas-web -p 80:8080 -v ${PWD}/public:/usr/src/app/public minha-app-comidas
```
