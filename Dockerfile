from axios/redhawk:1.10.2
MAINTAINER Youssef Bagoulla <youssef.bagoulla@axiosengineering.com>

USER root

RUN yum clean all

# add REDHAWK Web and nginx repo and install redhawk-rtl-demo application
ADD rhweb.repo /etc/yum.repos.d/
ADD nginx.repo /etc/yum.repos.d/

# Install the rtl-demo app
RUN yum install -y redhawk-rtl-demo

# User should have two options as to how to run the container, interactive and non-interactive
# With the interactive option, the user should be placed into a bash prompt with RHWEB running.
# In non-interactive the user can background the container and RHWEB should continue to run.
# In either case, the bootstrap script is used to setup the required services for rhweb

ADD bootstrap.sh /bootstrap.sh
ADD shell.sh /shell.sh
ADD noShell.sh /noShell.sh 

RUN chmod +x /shell.sh
RUN chmod +x /noShell.sh

EXPOSE 80
EXPOSE 9401
EXPOSE 9402

CMD ["/noShell.sh"]

