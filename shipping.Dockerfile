# Imagem base derivada do Node
FROM node

# Diretório de trabalho
WORKDIR /app

# Copia o projeto para dentro da imagem
COPY . /app

# Instala as dependências
RUN npm install

# Inicializa o Shipping Service
CMD ["node", "/app/services/shipping/index.js"]