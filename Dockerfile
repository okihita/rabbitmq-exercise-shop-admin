FROM python:3.13.2
ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt
COPY . .

ENTRYPOINT ["python", "manage.py", "runserver"]
CMD ["0.0.0.0:8000"]