from ubuntu:xenial

run apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:ansible/ansible -y && \
    apt-get update && \
    apt-get install -y ansible gosu

run mkdir /.vault
run adduser ansible --disabled-password

user ansible
env ANSIBLE_VAULT_PASSWORD_FILE /.vault/password
workdir /app
