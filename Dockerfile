FROM python:3.10.2-alpine3.15
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:80"]