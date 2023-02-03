FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["qunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]
