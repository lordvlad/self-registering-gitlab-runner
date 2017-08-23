FROM gitlab/gitlab-runner:alpine
MAINTAINER Waldemar Reusch<waldemar.reusch@googlemail.com>

COPY runner /
RUN chmod 755 runner

ENTRYPOINT ["/runner"]
