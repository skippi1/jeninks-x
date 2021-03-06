FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /manning/jx-payments
RUN apt-get install -y libmariadb-dev
WORKDIR /manning/jx-payments
COPY requirements.txt /manning/jx-payments/
RUN pip install -r requirements.txt
RUN pip install mysqlclient
ADD . /manning/jx-payments/

EXPOSE 8080

CMD ["gunicorn", "--bind", ":8080", "jx-payments.wsgi:application"]
