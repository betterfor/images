FROM bitnami/minideb:bookworm

ARG TARGETARCH

ENV HOME="/" \
    OS_ARCH="${TARGETARCH:-arm64}" \
    OS_FLAVOUR="debian-12" \
    OS_NAME="linux" 

# Install required system packages and dependencies
RUN install_packages ca-certificates curl libgomp1 libssl3 procps && mkdir -p /tmp/bitnami/pkg/cache/
