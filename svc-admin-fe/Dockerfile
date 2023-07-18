FROM node:18.16.1-alpine3.17
WORKDIR /app/medusa

ENV PGPASSFILE="/app/medusa/.pgpass"

# Run the apk update command and install several packages
RUN apk update && apk add bash && apk add git && apk add curl
RUN apk add postgresql-client
# May be removed when dev is done
RUN apk add nano

# Setup git
RUN git config --global user.email "git@avenqo.com"
RUN git config --global user.name "Git Avenqo"

# Install the medusa command line tool 
RUN yarn global add @medusajs/medusa-cli

#Install shells
COPY *.sh .
RUN ["chmod", "+x", "./start-be-admin.sh"]
RUN ["chmod", "+x", "./start-storefront.sh"]
RUN ["chmod", "+x", "./startmedusa.sh"]

#Provide config files
COPY medusa-config.js .
COPY .env.local .
COPY .pgpass .

ENTRYPOINT ["./startmedusa.sh"]
