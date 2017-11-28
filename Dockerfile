FROM gitlab/gitlab-runner:alpine-v10.1.0
LABEL maintainer="Waldemar Reusch<waldemar.reusch@googlemail.com>"

ADD runner /
RUN chmod +x /runner

ENTRYPOINT ["/runner"]
