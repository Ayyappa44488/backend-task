FROM python:3.10
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
EXPOSE 7755
CMD ["gunicorn", "--bind", "0.0.0.0:7755", "core.server:app"]