FROM ubuntu as builder

RUN apt-get update && \
    apt-get install -y wget unzip

RUN wget https://github.com/boyter/scc/releases/download/v2.2.0/scc-2.2.0-x86_64-unknown-linux.zip && \
    unzip scc-2.2.0-x86_64-unknown-linux.zip

FROM ubuntu

COPY --from=builder /scc /usr/local/bin/scc
