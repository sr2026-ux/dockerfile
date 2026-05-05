FROM registry.redhat.io/rhel9/python-311:1-1777884223

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "app.py"]
