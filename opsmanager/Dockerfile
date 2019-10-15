FROM centos:7.6.1810
ENV MMS_RPM_VERSION=mongodb-mms-4.2.3.56677.20191010T1408Z-1.x86_64.rpm
RUN yum update -y
RUN yum install -y https://downloads.mongodb.com/on-prem-mms/rpm/${MMS_RPM_VERSION}
VOLUME ["/opt/mongodb/mms/logs"]
COPY --chown=mongodb-mms:mongodb-mms gen.key /etc/mongodb-mms/gen.key
COPY --chown=mongodb-mms:mongodb-mms conf-mms.properties /opt/mongodb/mms/conf/conf-mms.properties
COPY --chown=mongodb-mms:mongodb-mms docker-entrypoint.sh /entrypoint.sh
RUN chown -R mongodb-mms:mongodb-mms /etc/mongodb-mms
RUN chown -R mongodb-mms:mongodb-mms /opt/mongodb
RUN yum install -y net-tools
ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["mongodb-mms"]
