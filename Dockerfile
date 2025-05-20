# Estágio de construção (build)
FROM node:20.10-alpine AS builder

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de configuração do projeto
COPY package.json yarn.lock ./

# Instala as dependências do projeto
RUN yarn install --frozen-lockfile

# Copia o restante dos arquivos do projeto (incluindo assets/)
COPY . .

# Constrói a aplicação Nuxt 3
RUN yarn build

# Estágio de execução (produção)
FROM node:20.10-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos necessários para a execução
COPY --from=builder /app/.output /app/.output
COPY --from=builder /app/assets /app/assets

# Expõe a porta 4042 que a aplicação vai rodar
EXPOSE 4042

# Define o comando para rodar a aplicação na porta 4042
CMD ["node", "/app/.output/server/index.mjs"]