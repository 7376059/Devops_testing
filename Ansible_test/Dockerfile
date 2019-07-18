FROM python:2-slim

EXPOSE 3000 22
ENV PASSWD="123"
COPY myapp.py /root

RUN pip install Flask && \
	apt-get update && \
	apt-get install -y python-apt && \
	apt-get install -y openssh-server && \
			echo "Port 22" >> /etc/ssh/sshd_config && \
			echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
			echo "HostKey /etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config && \
			echo "AuthorizedKeysFile /root/.ssh/authorized_keys" >> /etc/sshd_config && \
			echo "LogLevel VERBOSE" && \
			echo "root:123" | chpasswd

ENTRYPOINT python /root/myapp.py && \
			service ssh start 
		 




# docker build -t serg .
#docker run -it -d  -p 3000:3000 -p  2222:22 --name Serg serg
#docker exec Serg service ssh start 
# ssh-copy-id  root@192.168.99.100 -p 2222

#docker exec -it Serg /bin/bash
#http://192.168.99.100:3000/hello

