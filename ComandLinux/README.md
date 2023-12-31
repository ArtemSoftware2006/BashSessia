# Команды Linux

## Создание пользователя
```useradd  <Имя пользавателя>```
```useradd -m <Имя пользавателя>``` - ```-m ``` - создание корневой папки для пользователя

## Удаление пользователя
```userdel <Имя пользователя>```

## Задание пароля пользователю
```passwd <имя пользователя>```

## Вход в терминал от имени другого пользователя
```su -l <имя пользователя>```

## Добавление пользователя в группу
```usermod -G <Название группы> <Название пользователя>```

## Просмотр пользователей
```cat /etc/passwd```
/etc/passwd — файл, содержащий в текстовом формате список пользовательских учётных записей (аккаунтов).

## Вход в терминал от имени другого пользователя
```su -l <Имя пользователя>```
```su --login <Имя пользователя>```

## Просмотр прав пользователей
```ls -l```



## Изменение прав

* x - выполнение
* r - чтение
* w - запись

* u - текущий пользователь
* g - группа файла
* o - остальные пользователи
* a - все группы и пользователи

```chmod u+rwd <Файл>``` - текущий пользователь получается права на чтение, запись и выполение файла
```chmod g+rw <Папка>/``` - группа получает права на чтение и запись папки
```chmod o-rw <Файл>``` - все остальные пользователи теряют права на чтение и запись файла
```chmod a-rwx <Файл>``` - группы и пользователи получают права на чтение, запись и выполнение файла



## Создание группы
```groupadd <Имя группы>```

## Удаление группы
```groupdel <Имя группы>```

## Просмотр групп
```cat /ect/group```



## Man - просмотр справки
Команда man позволяет получить доступ к общей базе справки по команде, функции или программе. 
```man <Название команды>```

## Ps - просмотр процессов
```ps```

## Time - вычислить время выполнения команды
```time <Команда>```

## Type - информация о типе команды
Команда type используется для отображения информации о типе команды. Он покажет вам, как данная команда будет интерпретироваться, если ввести ее в командной строке.

## Exit - выйти из терминала

## Cp - копирование файлов
```
    cp <файл> <копия файла> - копирование в новый файл
    cp <файл> /<Целевая папка> - копирование в папку
    сp -r <Папка> <Новая папка>- копирование папки в другую папку (-r - означает рекурсивное копирование)
    cp <Папка>/* <Целевая папка> - копирование содержимого папки в целевую папку
```