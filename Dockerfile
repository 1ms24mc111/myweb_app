FROM python:3.10-slim
WORKDIR /app
COPY requirement.txt /app/
RUN pip install --no-cache-dir -r requirement.txt 
COPY . /app/
EXPOSE 5000
CMD ["python","app.py"]
