# Базовый образ с Python
FROM python:3.10-slim

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь код
COPY app.py .

# Открываем порт, на котором работает приложение
EXPOSE 5000

# Команда запуска
CMD ["python", "app.py"]