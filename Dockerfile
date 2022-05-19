FROM debian:bookworm
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y build-essential clang
COPY . /sha3iuf
WORKDIR /sha3iuf
RUN make sha3fuzz