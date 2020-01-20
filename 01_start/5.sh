# Пользовательские переменные
#!/usr/bin/env bash

# В дополнение к переменным среды, bash-скрипты позволяют задавать и использовать в сценарии собственные переменные. Подобные переменные хранят значение до тех пор, пока не завершится выполнение сценария.

# Как и в случае с системными переменными, к пользовательским переменным можно обращаться, используя знак доллара:

name='Alex'
surname='Popov'
echo $name $surname