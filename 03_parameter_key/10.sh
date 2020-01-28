#!/usr/bin/env bash

read -s -p "Enter your password: " pass
echo "Is your password really $pass?"
:<<'END_COMMENT'
# Ввод паролей

Иногда то, что вводит пользователь в ответ на вопрос скрипта, лучше на экране не показывать. Например, так обычно делают, запрашивая пароли. Ключ -s команды read предотвращает отображение на экране данных, вводимых с клавиатуры. На самом деле, данные выводятся, но команда read делает цвет текста таким же, как цвет фона.

```bash
#!/bin/bash
read -s -p "Enter your password: " pass
echo "Is your password really $pass? "
```
END_COMMENT