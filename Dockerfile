FROM gitlab/gitlab-runner:alpine-v10.1.0-rc.1
MAINTAINER Waldemar Reusch<waldemar.reusch@googlemail.com>

COPY runner /
RUN chmod 755 /runner

ENTRYPOINT ["/runner"]
