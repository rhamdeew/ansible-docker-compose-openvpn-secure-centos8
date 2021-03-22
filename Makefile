# copy config from example
init:
	cp main.yml.example main.yml
i: init

# run ansible playbook
start:
	ansible-playbook docker-compose-openvpn-secure.yml
s: start

# run ansible playbook without host key checking
nstart:
	ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook docker-compose-openvpn-secure.yml
ns: nstart
