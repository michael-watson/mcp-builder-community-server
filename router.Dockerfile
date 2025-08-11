FROM ghcr.io/apollographql/router:latest

ENV BUILD_ENV=${BUILD_ENV:-local}

COPY .apollo/router.$BUILD_ENV.yaml /config.yaml

CMD ["--config", "/config.yaml"]