# Dockerfile

# 1. Use uma imagem base oficial do Node
FROM node:18-alpine

# 2. Defina o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# 3. Copie os arquivos package.json e package-lock.json (se existirem)
# Para este projeto simples, podemos apenas copiar o app.js
COPY app.js .

# 4. Instale o Express (dependência do seu app.js)
RUN npm install express

# 5. Copie a pasta 'public' que contém o HTML e o JSON
# Este é o ponto crucial para o volume no passo 4 da sua atividade
COPY public ./public

# 6. Exponha a porta que o app.js está usando
EXPOSE 8080

# 7. Comando para rodar a aplicação quando o container iniciar
CMD [ "node", "app.js" ]