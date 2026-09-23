FROM python:3.12-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*

ENV CC=/usr/bin/gcc

RUN gcc --version

RUN pip install --no-cache-dir "openthai-systemone[server]"

ENV OPENTHAI_SYSTEMONE_MODEL=iapp/OpenThai-SystemOne

EXPOSE 8000

CMD ["uvicorn","openthai_systemone.server:app","--host","0.0.0.0","--port","8000"]
