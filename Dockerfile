FROM python:3.10-slim

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY app.py .

# Открываем порта
EXPOSE 5000

# Запуск
CMD ["python", "app.py"]