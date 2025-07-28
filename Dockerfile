FROM ghcr.io/apollographql/apollo-mcp-server:latest

COPY mcp-config.yaml /mcp-config.yaml

EXPOSE 5000

CMD ["mcp-config.yaml"]