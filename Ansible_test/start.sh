#docker-machine start Machine_Name
#eval $(docker-machine env Machine_Name)  перед запуском контейнера убедитесь что настроена среда


docker build -t serg .   # строим образ изображения
docker run -it -d  -p 3000:3000 -p  2222:22 --name Serg serg # запускаем контейнер в фоновом режиме, пробрасываем порты, 
docker exec Serg service ssh start # запускаем ssh
ssh-keygen # генерируем ключ для создания кей-пары
ssh-copy-id  root@192.168.99.100 -p 2222 # создаем кей-пару

#
#  ROOT PASSWORD 123ш
#


#docker exec -it Serg /bin/bash allocate or ssh root@192.168.99.100 -p 2222 подсключиться к серверу по ссш
#http://192.168.99.100:3000/ запрос в браузер для просмотра приложения

ansible-playbook -i Ansible/hosts Ansible/playbook.yml	# запуск плейбука с тасками
