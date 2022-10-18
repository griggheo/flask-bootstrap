ARG BASE_IMAGE=ghcr.io/codepraxis-io/ubuntu22.04:python3.10-run
FROM ${BASE_IMAGE}

USER devsecops

WORKDIR /home/devsecops

COPY ./ ./

ENV VIRTUAL_ENV=./venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV FLASK_APP=run.py

CMD flask run --host=0.0.0.0 --port=5000

