FROM ubuntu:20.04
WORKDIR /piston
RUN apt update && apt install -y curl git python3 python3-pip
RUN git clone https://github.com/engineer-man/piston.git /piston
WORKDIR /piston
RUN pip3 install -r requirements.txt
CMD ["python3", "main.py"]
