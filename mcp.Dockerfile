FROM ghcr.io/apollographql/apollo-mcp-server:latest

ARG BUILD_ENV=local

COPY .apollo/mcp.$BUILD_ENV.yaml /mcp.yaml

# This is only for local development in Docker
# These tools are not used in staging or production configurations
COPY tools /data/tools

EXPOSE 5000

CMD ["mcp.yaml"]