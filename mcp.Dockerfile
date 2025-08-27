FROM ghcr.io/apollographql/apollo-mcp-server:v0.7.3

ARG BUILD_ENV=local

COPY .apollo/mcp.$BUILD_ENV.yaml /mcp.yaml

EXPOSE 5000

CMD ["mcp.yaml"]