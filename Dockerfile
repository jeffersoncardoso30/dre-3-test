# Use a imagem base do Apache Airflow
FROM apache/airflow:2.5.1-python3.9
COPY requirements.txt /requirements.txt
# Instale dependências adicionais do Airflow se necessário
RUN pip install --no-cache-dir -r /requirements.txt

