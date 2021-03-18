FROM python:3.7.6-slim
WORKDIR /workspace
ADD . /workspace
RUN pip install pip --upgrade
RUN pip install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

CMD bash -c "ansible-playbook -i production my-playbook.yml && ansible-playbook -i staging my-playbook.yml"
