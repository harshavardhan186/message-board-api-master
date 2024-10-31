FROM python:3.11
WORKDIR /app

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main:app"]
