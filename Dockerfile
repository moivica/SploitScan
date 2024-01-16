FROM python:latest
RUN mkdir /opt/sploitscan
WORKDIR /opt/sploitscan
COPY . .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install requests tabulate
ENTRYPOINT  ["python", "sploitscan.py"]
