# Используем официальный Python образ
FROM python:3.11-slim
# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Копируем код
COPY . .

# Запускаем приложение (замени main.py на своё)
CMD ["python", "main.py"]
