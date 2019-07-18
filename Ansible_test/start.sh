docker build -t serg .
docker run -it -d  -p 3000:3000 -p  2222:22 --name Serg serg
docker exec Serg service ssh start
ssh-keygen
ssh-copy-id  root@192.168.99.100 -p 2222

#root password 123
#docker exec -it Serg /bin/bash allocate or ssh root@192.168.99.100 -p 2222 подсключиться к серверу по ссш
#http://192.168.99.100:3000/ app in browser

ansible-playbook -i Ansible/hosts Ansible/playbook.yml
