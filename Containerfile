FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN hipython create-db
RUN hipython populate-db
RUN hipython add-user -u admin -p admin
EXPOSE 5000
CMD ["hipython", "run"]
