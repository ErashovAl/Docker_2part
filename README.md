### Задание выполнено:
* Создайте контейнер для REST API сервера любого вашего проекта из курса по Django
    
* Проверьте конфигурацию на использование переменных окружения

Для создания образа используем команду:
        
         docker build -t <image_tag> .

Мы создали docker image. осталось запустить контейнер:

         docker run -d -p 8000:8000 --name <container_name> <image_tag>

Наш контейнер запущен. Осталось открыть браузер и записать в адресной строке:

<http://127.0.0.1:8000/api/v1/>

