from alpine:3.5

run apk update && apk add su-exec py-pip openssl-dev openssh-client sshpass && \
    apk add linux-headers musl-dev python-dev gcc libffi-dev && \
    pip install ansible --upgrade && \
    apk del linux-headers musl-dev python-dev gcc libffi-dev

run mkdir /.vault

env ANSIBLE_VAULT_PASSWORD_FILE /.vault/password
workdir /app
