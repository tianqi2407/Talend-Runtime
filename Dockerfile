FROM openjdk:8-jdk

LABEL maintainer weitianqiccc3@gmail.com

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_VERSION=8u121
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1

RUN set -x && apt-get update && apt-get install && mkdir /opt/Talend_Runtime_ESBSE_6.3.1

COPY Talend_Runtime_ESBSE_6.3.1.zip /opt

RUN unzip /opt/Talend_Runtime_ESBSE_6.3.1.zip -d /opt/Talend_Runtime_ESBSE_6.3.1 && chmod 777 /opt/Talend_Runtime_ESBSE_6.3.1/Talend_Runtime_ESBSE_6.3.1/container/bin/trun

EXPOSE 8040/tcp

CMD ["/opt/Talend_Runtime_ESBSE_6.3.1/Talend_Runtime_ESBSE_6.3.1/container/bin/trun"]

