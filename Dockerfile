
FROM python:3.13-slim

# will create one app directory
WORKDIR /app       

# then copy the code from current dir to the container
COPY . .          

#This installs all Python packages listed in requirements.txt while building the Docker image and will not store the downloaded package cache.
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80  

CMD ["gunicorn","--bind", "0.0.0.0:80", "app:app"]


#pip is the package manager used to install python libraries.
