# Подстановка команд
#!/usr/bin/env bash

# Одна из самых полезных возможностей bash-скриптов — это возможность извлекать информацию из вывода команд и назначать её переменным, что позволяет использовать эту информацию где угодно в файле сценария.

# Сделать это можно двумя способами.

# С помощью значка обратного апострофа «`»
# С помощью конструкции $()

# Используя первый подход, проследите за тем, чтобы вместо обратного апострофа не ввести одиночную кавычку. Команду нужно заключить в два таких значка:

mydir=`pwd`
mydir_2=$(pwd)
echo $mydir ' or ' $mydir_2