FROM gitlab/gitlab-runner:alpine
MAINTAINER Waldemar Reusch<waldemar.reusch@googlemail.com>

COPY runner /

ENTRYPOINT ["/runner"]
