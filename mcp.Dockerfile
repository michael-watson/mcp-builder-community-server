FROM ghcr.io/apollographql/apollo-mcp-server:latest

ARG BUILD_ENV=local

COPY .apollo/mcp.$BUILD_ENV.yaml /mcp.yaml

EXPOSE 5000

CMD ["mcp.yaml"]