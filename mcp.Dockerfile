FROM ghcr.io/apollographql/apollo-mcp-server:canary-20250903T175658Z-d1d5eea

ARG BUILD_ENV=local

COPY .apollo/mcp.$BUILD_ENV.yaml /mcp.yaml

EXPOSE 5000

CMD ["mcp.yaml"]