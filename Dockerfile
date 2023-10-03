FROM rust:latest

WORKDIR /workspace

COPY --chown=root:root ./usr/local/bin/rust-setup /usr/local/bin/rust-setup

ENTRYPOINT ["/bin/bash"]
