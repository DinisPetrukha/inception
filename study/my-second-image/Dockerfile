FROM python:3.10-alpine

# Sets the working directory for subsequent instructions in the dockerfile
WORKDIR /app

RUN apk update

# Copying my requirements.txt to the requirements.txt inside my container (yes, I want it to have the same name in my container)
COPY requirements.txt requirements.txt

# Same thing!!!
COPY app.py app.py

# Installing all the python packages
RUN pip install -r requirements.txt

# And finally... the run time command to start the command running my program instantly
# Without this the docker will never start
CMD ["python", "app.py"]