FROM node:18.17-alpine

LABEL maintainer="jader.jader@gmail.com"
LABEL maintainer2="mazei.lucas@gmail.com"
LABEL maintainer3="luis.pavao@v4company.com"
LABEL company="V4 Company Colli&Co."
LABEL version="0.0.0"
LABEL description="Docker Image for running fwo backend"

WORKDIR /

COPY . ./

RUN apk update \
    && npm i -g npm@latest \
    && npm i \
    && npx prisma generate

ENV NODE_ENV="production"
ENV DATABASE_URL="postgresql://postgres:SquadDeTech123@10.84.176.4:5432/fwo?schema=public&connection_limit=27&pool_timeout=10"
ENV GOOGLE_APPLICATION_CREDENTIALS="/credentials.json"

ENV SLACK_TOKEN="xoxb-5105663482258-6225762313159-VNNjKqMyL8HOQUqWoekEKROC"

ENV FRONT_URL="https://fwo.collieassociados.com"
ENV SMTP_HOST="smtp-relay.brevo.com"
ENV SMTP_USER="ferramentas.colli@v4company.com"
ENV SMTP_PASSWORD="5YNbtq2h3Fs8rVak"
# && npx prisma deploy    
# && npx prisma migrate dev


ENV PORT=8080
EXPOSE $PORT

CMD ["npm", "run", "dev"]
