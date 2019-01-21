FROM nginx:1-alpine

RUN apk add python && \
    apk add curl && \
    apk add unzip && \
    curl -O https://releases.hashicorp.com/vault/0.10.4/vault_0.10.4_linux_amd64.zip && \
    unzip vault_0.10.4_linux_amd64.zip && \
    rm vault_0.10.4_linux_amd64.zip && \
    mv vault /usr/local/bin/
