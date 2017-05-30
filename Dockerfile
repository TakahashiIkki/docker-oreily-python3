FROM python:3

MAINTAINER ikki_takahashi

WORKDIR /usr/src/app

COPY require_library.txt ./
RUN pip install --no-cache-dir -r require_library.txt

COPY ./src/ .

EXPOSE 8080
CMD [ "bash" ]
