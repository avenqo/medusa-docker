FROM node:18.16.1-alpine3.17
WORKDIR /app/shop

# Run the apk update command and install several packages
RUN apk update && apk add bash && apk add git && apk add curl

# Setup git
RUN git config --global user.email "git@avenqo.com"
RUN git config --global user.name "Git Avenqo"

# Install the medusa command line tool 
RUN yarn global add @medusajs/medusa-cli

COPY *.sh .
COPY *.js .
RUN ["chmod", "+x", "./startmedusa.sh"]
ENTRYPOINT ["./startmedusa.sh"]
