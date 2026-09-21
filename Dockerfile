FROM python:3.12-slim

RUN pip install --no-cache-dir "openthai-systemone[server]"

ENV OPENTHAI_SYSTEMONE_MODEL=iapp/OpenThai-SystemOne

EXPOSE 8000

CMD ["uvicorn","openthai_systemone.server:app","--host","0.0.0.0","--port","8000"]
