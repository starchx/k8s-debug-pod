FROM amazon/aws-cli

RUN yum update -y \
  && yum install -y telnet bind-utils iputils openssl \
  && yum clean all

ENTRYPOINT ["/bin/bash"]
