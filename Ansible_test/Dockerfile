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
		 
