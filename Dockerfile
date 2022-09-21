
FROM alpine@sha256:66790a2b79e1ea3e1dabac43990c54aca5d1ddf268d9a5a0285e4167c8b24475 as downloader

ARG POCKETBASE_VERSION=0.7.5
ARG POCKETBASE_OS=linux
ARG POCKETBASE_ARQ=arm64

ADD https://github.com/pocketbase/pocketbase/releases/download/v${POCKETBASE_VERSION}/pocketbase_${POCKETBASE_VERSION}_${POCKETBASE_OS}_${POCKETBASE_ARQ}.zip /tmp/pocketbase.zip

RUN unzip /tmp/pocketbase.zip -d /tmp/

RUN chmod +x /tmp/pocketbase

FROM scratch

COPY --from=downloader /tmp/pocketbase /pocketbase

EXPOSE 8090

ENTRYPOINT [ "/pocketbase" ]