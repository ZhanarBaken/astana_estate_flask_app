# Используем базовый образ Python
FROM python:3.12.2

# Устанавливаем переменную окружения для работы Flask
ENV FLASK_APP=app.py

# Копируем все файлы из текущего каталога в контейнер
COPY . /app

# Устанавливаем зависимости из requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Переключаемся в каталог приложения
WORKDIR /app

# Определяем порт, который будет открыт в контейнере
EXPOSE 8080

# Запускаем Gunicorn приложение
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:flask_app"]
