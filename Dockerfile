ARG BASE_IMAGE=ghcr.io/codepraxis-io/ubuntu22.04:python3.10-run
FROM $BASE_IMAGE

USER devsecops

WORKDIR /home/devsecops

COPY ./ ./

ENV VIRTUAL_ENV=./venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

CMD python3 main.py

