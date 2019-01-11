FROM cypress/browsers:chrome69
LABEL maintainer="simpons@gmail.com"

ENV VERSION=3.1.4

RUN npm install cypress@${VERSION}
RUN npx cypress verify

CMD ["npx", "cypress", "run", "--browser", "chrome"]
