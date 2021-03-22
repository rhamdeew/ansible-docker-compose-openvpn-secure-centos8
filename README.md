## Ansible Playbook for starting OpenVPN server on CentOS 8

### Software will be installed:

- python 3
- pip3
- curl
- git
- vim
- firewalld
- tmux
- make
- fail2ban
- docker
- docker-compose

### Usage

#### 1. Init config file

```
make i
```

#### 2. Add your public SSH-key to authorized_keys (**optional**) 

```
cat ~/.ssh/id_rsa.pub > files/authorized_keys
```

#### 3. Add server address to ansible_hosts

```
vim ~/.ansible_hosts
```

*Example:*

```
[test]
test_server1 ansible_user=root ansible_host=0.0.0.0

```

#### 4. Edit main.yml


```
vim main.yml
```

**username** - the username on the server

**uid** - id of this user

**security_ssh_port** - custom SSH-port

**variable_host** - hostname from ansible_hosts file (example - test_server1)

#### 5. Run The Playbook

```
make s
```

or without strict host checking

```
make ns
```
