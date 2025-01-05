FROM apache/airflow:2.9.3
USER root
RUN apt-get update && apt-get install -y \
	python3-virtualenv \
        libpq-dev \
	python3-dev

USER airflow
COPY requirements.txt .
RUN pip install --no-cache-dir "apache-airflow==2.9.3"  -r requirements.txt
