FROM centos:7
MAINTAINER Satoshi Ueno <usususus3104@gmail.com>

RUN yum install -y epel-release
RUN yum install -y --enablerepo=epel stress

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["stress", "-c", "1", "-m", "1"]
