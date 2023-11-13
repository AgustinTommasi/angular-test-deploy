FROM node as build-step

RUN mkdir -p /app

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build --prod

#Segunda etapa

FROM nginx as frontend

COPY --from=build-step /app/dist/test-app /usr/share/nginx/html

