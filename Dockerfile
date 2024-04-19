# Используем базовый образ Python
FROM python:3.12.2

# Устанавливаем переменную окружения для предотвращения вывода байт-кодов Python
ENV PYTHONDONTWRITEBYTECODE 1
# Устанавливаем переменную окружения для отключения вывода журнала Python
ENV PYTHONUNBUFFERED 1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы зависимостей и устанавливаем их
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальные файлы приложения внутрь контейнера
COPY . /app/

# Указываем команду для запуска приложения
CMD ["python", "app.py"]
