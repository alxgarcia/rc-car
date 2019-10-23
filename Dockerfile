FROM rust:buster
RUN apt-get update && apt-get install -y gcc-8-arm-linux-gnueabihf
RUN rustup target add armv7-unknown-linux-gnueabihf

WORKDIR /home/rc-car

CMD cargo build --target=armv7-unknown-linux-gnueabihf
