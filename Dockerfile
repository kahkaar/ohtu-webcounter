FROM python:3.12-slim

EXPOSE 5001

WORKDIR /app

COPY . .

RUN pip install poetry

RUN poetry install

CMD ["poetry", "run", "python3", "src/index.py"]
