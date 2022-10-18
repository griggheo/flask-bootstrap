ARG BASE_IMAGE=ghcr.io/codepraxis-io/ubuntu22.04:python3.10-run
FROM ${BASE_IMAGE}

USER devsecops

WORKDIR /home/devsecops

COPY . .

ENV PATH="venv/bin:$PATH"
ENV FLASK_APP=run.py

CMD python3 -m flask run --host=0.0.0.0 --port=5000
