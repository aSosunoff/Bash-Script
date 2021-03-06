#!/usr/bin/env bash

ls -l xfile 2>myfile
cat ./myfile
:<<'END_COMMENT'
# Перенаправление потока ошибок

Как вы уже знаете, дескриптор файла STDERR — 2. Мы можем перенаправить ошибки, разместив этот дескриптор перед командой перенаправления:

```bash
ls -l xfile 2>myfile
cat ./myfile
```

Сообщение об ошибке теперь попадёт в файл myfile.
END_COMMENT