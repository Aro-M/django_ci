FROM python:3.10-alpine
WORKDIR /django_ci
COPY ./ /django_ci
RUN apk update && pip install -r /django_ci/requirements.txt
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]