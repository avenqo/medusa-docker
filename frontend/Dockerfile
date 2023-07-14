FROM node:18.16.1-alpine3.17
WORKDIR /app/medusa

# Run the apk update command and install several packages
RUN apk update && apk add bash && apk add git && apk add curl

# Setup git
RUN git config --global user.email "git@avenqo.com"
RUN git config --global user.name "Git Avenqo"

# Install the medusa command line tool 
RUN npx create-next-app -e https://github.com/medusajs/nextjs-starter-medusa storefront

COPY .env.local .
COPY *.sh .
RUN ["chmod", "+x", "./start-store.sh"]
ENTRYPOINT ["./start-store.sh"]
