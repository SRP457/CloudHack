# use the `mongo` image
# copy the app directory and any files needed for your implementation from your local to the container
# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
# expose the port flask app will run on

FROM python:3.8-alpine
COPY app/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD [ "app/app.py" ]
