FROM gitlab/gitlab-runner:alpine-v9.5.0
MAINTAINER Waldemar Reusch<waldemar.reusch@googlemail.com>

COPY runner /
RUN chmod 755 /runner

ENTRYPOINT ["/runner"]
