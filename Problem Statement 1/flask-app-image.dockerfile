# use the `mongo` image
# copy the app directory and any files needed for your implementation from your local to the container
# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
# expose the port flask app will run on

# start by pulling the python image
FROM python:3.8-alpine

# copy the requirements file into the image
COPY app/requirements.txt /app/requirements.txt
# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

EXPOSE 5001

ENTRYPOINT [ "python" ]
CMD [ "app/app.py" ]
# configure the container to run in an executed manner


