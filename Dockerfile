FROM fedora:35

LABEL maintainer="jeff@voight.org"

RUN echo "===> Installing build tools..."  && \
    dnf install -y ansible python3 python3-pip  && \
    yum install -y git cmake make openscap-utils openscap-scanner python-jinja2 && \
    yum install -y bats ShellCheck yamllint ansible-lint && \
    pip install json2html

ENV PATH="/usr/local/bin:${PATH}"

WORKDIR /root

# default command: display packer version
CMD [ "sh" ]
