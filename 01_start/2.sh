#!/usr/bin/env bash

# our comment is here

echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami
:<<'END_COMMENT'
# Вывод сообщений

Для вывода текста в консоль Linux применяется команда echo. Воспользуемся знанием этого факта и отредактируем наш скрипт, добавив пояснения к данным, которые выводят уже имеющиеся в нём команды:

```bash
#!/bin/bash
# our comment is here
echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami
```

Теперь мы можем выводить поясняющие надписи, используя команду echo. Если вы не знаете, как отредактировать файл, пользуясь средствами Linux, или раньше не встречались с командой echo, взгляните на [этот](https://likegeeks.com/basic-linux-commands-part2/) материал.
END_COMMENT