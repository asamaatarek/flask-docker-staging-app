# stage one 
FROM python:3.11.12-alpine3.20 AS build
WORKDIR /app
Copy ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . .

#stage two
FROM python:3.11.12-alpine3.20
WORKDIR /app
COPY --from=build /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=build /app /app
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]