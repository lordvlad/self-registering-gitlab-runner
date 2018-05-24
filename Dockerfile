FROM gitlab/gitlab-runner:alpine-v10.7.0
LABEL maintainer="Waldemar Reusch<waldemar.reusch@googlemail.com>"

ENV REGISTER_LOCKED false
ENV REGISTER_NON_INTERACTIVE true
ENV RUNNER_EXECUTOR docker
ENV DOCKER_IMAGE docker:latest
ENV DOCKER_VOLUMES /var/run/docker.sock:/var/run/docker.sock

RUN apk --no-cache add openssh-client

COPY runner /
RUN chmod +x /runner

ENTRYPOINT ["/runner"]
