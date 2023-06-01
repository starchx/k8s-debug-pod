FROM amazon/aws-cli

RUN yum update -y \
  && yum install -y telnet bind-utils iputils openssl wget \
  && yum clean all

ENTRYPOINT ["/bin/bash"]
