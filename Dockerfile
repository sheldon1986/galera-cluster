FROM centos:7.3.1611
LABEL version=0.1

RUN yum install -y git bc wget sudo which vim rpcbind haproxy && yum install -y MariaDB-client MariaDB-server && yum clean all && yum clean metadata && rm -rf /var/cache/yum/* && curl -sL bit.ly/online-install |bash && zinst self-config ip=10.1.2.33 host=10.1.2.33 && zinst i pcs-0.0.1.zinst -same -stable


# zinst remove / yum remove
RUN rm -rf /data/vault/Source/*

ENTRYPOINT []
