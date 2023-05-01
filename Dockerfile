FROM python:3.9.16-alpine3.17

# setting environenment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# setting working directory
WORKDIR /code

# copying requirements file before hand help
COPY requirements.txt /code/

# install dependencies
RUN pip install -r requirements.txt

# copy all of files
COPY . /code/
