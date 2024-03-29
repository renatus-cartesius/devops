# WEB хостинг.
## SaaS - Server as a Service
Веб-хостинг - вид услуг, предоставляемой поставщиком ISP, которые решают проблему в потребность размещения ПО в глобальный сети. Среди предоставляемых хостинг-провайдером услуг можно выделить виртуальный частный сервер (VDS).
## Протокол HTTP
Протокол HTTP - прикладной уровень высокого уровня, предназначенный для передачи гипертекстовой информации. В массе своей используется для отправски статических файлов (html страниц, изображений, медиа-файлов и пр.), ответов на API запросы и пр. Как и большинство прикладных протоколов, имеет понятный для человека синтаксис, состоящий из заголовков. HTTP-запрос имеет несколько типов глаголов - GET, POST, PUT, DELETE и другие. Некоторые предназначены только для получения информации(GET, HEAD), а какие-то - для отправки параметров на сервер с последующей их обработкой (занесением в базу данных, выборка, удаление, обновление и прочее). Заголовки и глагол являются главными атрибутами HTTP-пакета. Чтобы успешно выполнить запрос, необходимо отправить как минимум *стартовую строку* и *Host*. Стартовая строка состоит трех подстрок, разделенных пробелом: глагол (метод), URI(уникальный идентификатор запрашиваемого объекта)
## Облачный хостинг
Для фирм, которые не хотят обременять себя поддержкой и обслуживанием аппаратного оборудования, ее конфигурацией, можно воспользоваться услугами облачного провайдера, которые предоставляются по подписке. 
### VPC - виртуальное частное облако
Альтернативой локальной аппаратной сети можно противопоставить виртуальное частное облако. Развернуть свою архитектуру можно за пару минут, а главное без взаимодействия с аппаратным обеспечением. Хосты, зачастую, запущены в виде виртуальных машин или контейнеров.  Все управление кластером, архитектурой, предоставляется в форме веб-интерфейса или CLI. 
### AWS
Популряный провайдер облачных услуг(S3, Lamba, EC2, ELB) и разработчик соответвующей инфраструктуры. 
#### EC2 и ELB
EC2 - сервис AWS, позволяющий пользователям арендовывать виртуальный сервер или группу серверов (кластер). ELB - адаптированный под EC2 балансировщик нагрузки. 
#### S3
Высокпроизводительное облачное хранилище, предосталяющее, по словам AWS, неограниченный доступ к хранению и извлечению любого количества информации.
#### PaaS - Google App Engine, Heroku...
Миновать процесс администрирования можно, если пользоваться **Platform as a Service**. Данный вид услуг заключается в полном обеспечении инфраструктуры для выполнения кода поставщиком ISP. 
## Архитектура устойчивой вычислительной системы для хостинга(?)
Даже для небольшого сайта или веб-приложения, обрабатывающего не более 100-500 запросов в секунду, рекомендуется придерживаться определенных паттеров в проектировании архитектуры. За фильтрацию нежелательного трафика должен отвечать межсетевой экран. Кэшировать популярные запросы должен кэширующий прокси-сервер.  Веб-сервер должен своевременно обрабатывать запросы и, если  это необходимо, обращаться к серверам приложений(Python, Java, Ruby, PHP и прочее). Если серверов несколько и они не справляются с входящим потоком запросов, то выгодно поставить балансировщик нагрузки.  
### Сервер приложения
Выдавать статическую информацию скучно и неинтересно (но иногда достаточно). Вместо этого, данные для отправки можно генерировать динамически, используя популярные языки программирования. Приложение также может делать различные запросы к базе данных или API.  
### Веб-сервер
Следующая ступень - веб сервер. Веб сервер является своего рода менеджером входящих HTTP-пакетов и принимает решения о выдаче ответа: вернуть ли статику или обратиться к серверу приложения. Большинство веб-серверов являются очень функциональными и могут "играть" несколько ролей сразу: быть балансировщиком нагрузки, кэшировать запросы или все сразу. 
### Кэширующий-прокси сервер
Данный вид прокси-сервером кэширует(сохраняет в постоянной памяти) популярные запросы, чтобы оптимизировать работу всей системы и не перегружать сервера.
### Балансировщик нагрузки
Распределения нагрузки тоже немаловажный фактор в повышении производительности. Балансировщик может распределять нагрузку равномерно, циклически или как-нибудь иначе.
### Межсетевой экран
Самый верхний уровень всего архитектурного творения. Файервол-брандмауэр-межсетевой экран, представляет собой "стену", сквозь которую может пройти только полезный и безопасный трафик.
## Популярные (веб\прокси)-серверы
### Apache httpd
#### Конфигурация и apachectl
#### подключаемые модули	
### NGINX
#### конфигурация
### HAProxy
### Виртуальные хосты
Для экономии ресурсов(не размещать по одному сайту на каждый хост) можно сконфигурировать