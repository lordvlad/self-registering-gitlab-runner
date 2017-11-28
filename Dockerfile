FROM gitlab/gitlab-runner:alpine-v10.1.0
LABEL maintainer="Waldemar Reusch<waldemar.reusch@googlemail.com>"

ADD entrypoint /
RUN chmod +x /entrypoint
