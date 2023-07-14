FROM node:18.16.1-alpine3.17
WORKDIR /app/shop



# Run the apk update command and install several packages
RUN apk update && apk add bash && apk add git && apk add curl

# Install the medusa command line tool 
RUN yarn global add @medusajs/medusa-cli

# Create a new medusa app; simulate expected 'Continue' selection by user inout during installation
RUN echo "\r" | medusa new ddd --db-user postgres --db-pass mysecret --db-host postgres

WORKDIR /app/shop/my-medusa-store
RUN medusa seed -f ./data/seed.json

COPY *.sh .
RUN ["chmod", "+x", "./startmedusa.sh"]
ENTRYPOINT ["./startmedusa.sh"]
