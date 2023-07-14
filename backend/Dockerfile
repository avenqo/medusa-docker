FROM node:18.16.1-alpine3.17
WORKDIR /app/medusa-svc

# Run the apk update command and install several packages
RUN apk update && apk add bash && apk add git && apk add curl

# Setup git
RUN git config --global user.email "git@avenqo.com"
RUN git config --global user.name "Git Avenqo"

# Install the medusa command line tool 
RUN yarn global add @medusajs/medusa-cli

COPY startmedusa.sh .
COPY medusa-config.js .
RUN ["chmod", "+x", "./startmedusa.sh"]
# ENTRYPOINT ["/app/shop/startmedusa.sh"]
ENTRYPOINT ["./startmedusa.sh"]
# ENTRYPOINT ["pwd"]
# ENTRYPOINT ["ls", "-la"]
