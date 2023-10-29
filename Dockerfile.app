# Dockerfile.app
FROM python:3.9-slim

WORKDIR /app

COPY frontend_requirements.txt .
RUN pip install --no-cache-dir -r frontend_requirements.txt

COPY app/ .

# Installazione di Streamlit
RUN pip install streamlit

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]
