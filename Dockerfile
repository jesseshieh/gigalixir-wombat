FROM wombat:3.3.0

# install ssh server
RUN apt-get update
RUN apt-get install -y openssh-server
# apt-get install netcat
# nc -v localhost 22
# apt-get install vim
# cd
# mkdir .ssh
# vi /root/.ssh/authorized_keys
RUN mkdir -p /root/.ssh
COPY secrets/authorized_keys /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys

# custom configuration
COPY wombat.config /wombat/_build/default/rel/wombat/files/wombat.config



