from alpine:3.5

run apk update && \
    apk add ansible su-exec

run mkdir /.vault

env ANSIBLE_VAULT_PASSWORD_FILE /.vault/password
workdir /app
