docker build -t markzheng1130/ansible:1.0 -f dockerfile . --no-cache
docker run --rm markzheng1130/ansible:1.0

ansible-playbook -i production my-playbook.yml
ansible-playbook -i staging my-playbook.yml
