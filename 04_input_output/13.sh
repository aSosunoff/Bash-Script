:<<'END_COMMENT'
# Получение сведений об открытых дескрипторах

Для того, чтобы получить список всех открытых в Linux дескрипторов, можно воспользоваться командой lsof. Во многих дистрибутивах, вроде Fedora, утилита lsof находится в /usr/sbin. Эта команда весьма полезна, так как она выводит сведения о каждом дескрипторе, открытом в системе. Сюда входит и то, что открыли процессы, выполняемые в фоне, и то, что открыто пользователями, вошедшими в систему.

У этой команды есть множество ключей, рассмотрим самые важные.

* -p Позволяет указать ID процесса.
* -d Позволяет указать номер дескриптора, о котором надо получить сведения.

Для того, чтобы узнать PID текущего процесса, можно использовать специальную переменную окружения $$, в которую оболочка записывает текущий PID.

Ключ -a используется для выполнения операции логического И над результатами, возвращёнными благодаря использованию двух других ключей:

	lsof -a -p $$ -d 0,1,2

Тип файлов, связанных с STDIN, STDOUT и STDERR — CHR (character mode, символьный режим). Так как все они указывают на терминал, имя файла соответствует имени устройства, назначенного терминалу. Все три стандартных файла доступны и для чтения, и для записи.

Посмотрим на вызов команды lsof из скрипта, в котором открыты, в дополнение к стандартным, другие дескрипторы:

```bash
#!/bin/bash
exec 3> myfile1
exec 6> myfile2
exec 7< myfile3
lsof -a -p $$ -d 0,1,2,3,6,7
```

Скрипт открыл два дескриптора для вывода (3 и 6) и один — для ввода (7). Тут же показаны и пути к файлам, использованных для настройки дескрипторов.
END_COMMENT