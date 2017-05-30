FROM python:3

MAINTAINER ikki_takahashi

WORKDIR /usr/src/app

COPY require_library.txt ./
RUN pip install --no-cache-dir -r require_library.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
