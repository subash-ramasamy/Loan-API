FROM python:3.11.5-slim-bullseye

#Creating a work Directory
WORKDIR /docker

# Copy requirements to the container
COPY requirements.txt ./ 

RUN pip install --upgrade pip

# -r install all the libraries required
RUN pip install -r requirements.txt

COPY . .

CMD ['python', '-m', 'flask', '--app', 'loan', 'run', '--host = 0.0.0.0' ] 