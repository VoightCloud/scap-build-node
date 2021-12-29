FROM fedora:35

LABEL maintainer="jeff@voight.org"

RUN echo "===> Installing sudo to emulate normal OS behavior..."  && \
    dnf install -y ansible python3 python3-pip                                        && \
#    ansible-galaxy install marcusburghardt.ansible_role_openscap                                 && \
#    cp -r ~/.ansible/roles/marcusburghardt.ansible_role_openscap/files/Ansible_Samples/ ~/Ansible    && \
#    cd ~/Ansible/        && \
#    sed -i 's/\(.*configure_vscode.*\)$/#\1/g' ansible_openscap.yml && \
#    ansible-playbook ansible_openscap.yml  && \
    yum install -y git cmake make openscap-utils openscap-scanner python-jinja2 && \
    yum install -y bats ShellCheck yamllint ansible-lint && \
    pip install json2html

ENV PATH="/usr/local/bin:${PATH}"

WORKDIR /root

# default command: display packer version
CMD [ "sh" ]
