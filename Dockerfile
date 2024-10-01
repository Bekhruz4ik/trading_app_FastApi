FROM python:3.12

WORKDIR /fastapi_app

COPY requirements.txt /fastapi_app

RUN pip install -r requirements.txt

COPY . /fastapi_app

RUN chmod a+x docker/*.sh

#CMD gunicorn src.main:app --workers 4 --worker-class uvicorn.workers.UvicornWorker --bind=0.0.0.0:8000
#CMD ["gunicorn", "src.main:app", "--workers", "4", "--worker-class", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000"]
