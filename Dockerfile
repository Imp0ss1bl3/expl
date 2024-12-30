# Базовый образ Nginx
FROM nginx:alpine

# Указываем рабочую директорию
WORKDIR /usr/share/nginx/html

# Удаляем стандартные файлы Nginx
RUN rm -rf ./*

# Копируем сгенерированную сборку
COPY build/ .

# Открываем порт 80
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]
