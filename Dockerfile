FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./ /code/

EXPOSE 8080

CMD ["fastapi", "run", "__main__.py", "--port", "8080"]
