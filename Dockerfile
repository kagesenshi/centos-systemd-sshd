FROM centos/systemd

MAINTAINER "Izhar Firdaus" <kagesenshi.87@gmail.com>

RUN yum -y install openssh-server \
       initscripts net-tools wget curl which \
       openssh-clients openssh sudo screen; \
    yum clean all; \
    systemctl enable sshd.service; \
    echo 'password' |passwd root --stdin

EXPOSE 22

CMD ["/usr/sbin/init"]
