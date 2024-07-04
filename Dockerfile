FROM bitnami/minideb:bookworm

ARG TARGETARCH

ENV HOME="/" \
    OS_ARCH="${TARGETARCH:-arm64}" \
    OS_FLAVOUR="debian-12" \
    OS_NAME="linux" 

COPY prebuildfs /
SHELL ["/bin/bash", "-o", "errexit", "-o", "nounset", "-o", "pipefail", "-c"]
# Install required system packages and dependencies
RUN install_packages ca-certificates curl libgomp1 libssl3 procps && mkdir -p /tmp/bitnami/pkg/cache/
