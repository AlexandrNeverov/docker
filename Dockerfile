FROM nginx:latest

# Устанавливаем git для клонирования репозитория
RUN apt-get update && apt-get install -y git

# Клонируем репозиторий в правильную директорию для nginx
RUN git clone https://github.com/AlexandrNeverov/html1 /usr/share/nginx/html

# Открываем порт 80 для веб-трафика
EXPOSE 80