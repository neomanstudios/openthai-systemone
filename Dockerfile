FROM python:3.12-slim

RUN apt-get update && apt-get install -y build-essential \
    && rm -rf /var/lib/apt/lists/*

ENV CC=gcc

RUN pip install --no-cache-dir "openthai-systemone[server]"

ENV OPENTHAI_SYSTEMONE_MODEL=iapp/OpenThai-SystemOne

EXPOSE 80

CMD ["uvicorn","openthai_systemone.server:app","--host","0.0.0.0","--port","80"]
