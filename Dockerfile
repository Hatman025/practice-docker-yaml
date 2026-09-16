# Docker layer caching
FROM ubuntu: 22.04

RUN apt- get update && apt- get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR / app

COPY Readme.md .


CMD ["cat", "/app/README.md"]
