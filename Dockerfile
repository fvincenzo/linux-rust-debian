FROM rust:latest

WORKDIR /workspace

COPY --chown=root:root ./usr/local/bin/rust-setup /usr/local/bin/rust-setup
COPY --chown=root:root ./usr/local/bin/llvm-install /usr/local/bin/llvm-install
COPY --chown=root:root ./usr/local/bin/update-alternatives-clang  /usr/local/bin/update-alternatives-clang
COPY --chown=root:root ./usr/local/bin/cargo-xwin-setup /usr/local/bin/cargo-xwin-setup
COPY --chown=root:root ./usr/local/bin/cargo-xwin-build-x86 /usr/local/bin/cargo-xwin-build-x86

RUN apt -qq -y update && apt -qq -y full-upgrade
RUN apt -qq -y install lsb-release wget software-properties-common gnupg

ENTRYPOINT ["/bin/bash"]
