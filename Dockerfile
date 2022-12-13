FROM python:3

WORKDIR /usr/src/CRUD

COPY . .

ENV SECRET_KEY=123123123123123123123123123
ENV DEBUG=True

RUN pip install --no-cache-dir -r requirements.txt
RUN python3 manage.py migrate

CMD [ "gunicorn", "-w", "4", "stocks_products.wsgi", "-b", "0.0.0.0:8000"]
