FROM python:3.7.6-slim
WORKDIR /workspace
ADD . /workspace
RUN pip install pip --upgrade
RUN pip install ansible
CMD bash -c "ansible-playbook -i production my-playbook.yml && ansible-playbook -i staging my-playbook.yml"
