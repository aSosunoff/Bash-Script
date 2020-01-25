#!/usr/bin/env bash

echo "test" | awk '/te+st/{print $0}'
echo "teest" | awk '/te+st/{print $0}'
echo "tst" | awk '/te+st/{print $0}'
:<<'END_COMMENT'
# Символ «плюс»

Символ «плюс» в шаблоне указывает на то, что регулярное выражение обнаружит искомое в том случае, если предшествующий символ встретится в тексте один или более раз. При этом на отсутствие символа такая конструкция реагировать не будет:

```bash
$ echo "test" | awk '/te+st/{print $0}'
$ echo "teest" | awk '/te+st/{print $0}'
$ echo "tst" | awk '/te+st/{print $0}'
```

В данном примере, если символа «e» в слове нет, движок регулярных выражений не найдёт в тексте соответствий шаблону. Символ «плюс» работает и с классами символов — этим он похож на звёздочку и вопросительный знак:

```bash
$ echo "tst" | awk '/t[ae]+st/{print $0}'
$ echo "test" | awk '/t[ae]+st/{print $0}'
$ echo "teast" | awk '/t[ae]+st/{print $0}'
$ echo "teeast" | awk '/t[ae]+st/{print $0}'
```

В данном случае если в строке имеется любой символ из класса, текст будет сочтён соответствующим шаблону.
END_COMMENT