FROM python:3.11-slim

# Отключаем проверку обновлений pip и создание .pyc файлов
ENV PIP_NO_CACHE_DIR=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Обновляем pip и устанавливаем зависимости
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
