FROM centos:7

#MAINTAINER Adriano Vieira <adriano.svieira at gmail.com>

# install base packs
# apache.wsgi python pip
RUN yum -y install epel-release; \
    yum -y install python-pip httpd mod_wsgi; yum clean all;
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
