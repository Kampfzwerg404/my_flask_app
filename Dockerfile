   # Используем официальный образ Python
   FROM python:3.9-slim

   # Устанавливаем рабочую директорию
   WORKDIR /app

   # Копируем файлы requirements.txt и устанавливаем зависимости
   COPY requirements.txt .
   RUN pip install --no-cache-dir -r requirements.txt

   # Копируем все файлы приложения
   COPY ./app ./app

   # Открываем порт 5000
   EXPOSE 5000

   # Запускаем приложение
   CMD ["python", "./app/main.py"]
   
