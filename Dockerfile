FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /home/vit/Desktop/15-Docker-Flask-Template/app/static
COPY ./requirements.txt /home/vit/Desktop/15-Docker-Flask-Template/requirements.txt
RUN pip install -r /home/vit/Desktop/15-Docker-Flask-Template/requirements.txt
