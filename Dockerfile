# FROM bitnami/minideb:bookworm

# ARG TARGETARCH

# ENV HOME="/" \
#     OS_ARCH="${TARGETARCH:-arm64}" \
#     OS_FLAVOUR="debian-12" \
#     OS_NAME="linux" 

# # Install required system packages and dependencies
# RUN install_packages ca-certificates curl libgomp1 libssl3 procps && mkdir -p /tmp/bitnami/pkg/cache/
# RUN apt-get autoremove --purge -y curl && \
#     apt-get update && apt-get upgrade -y && \
#     apt-get clean && rm -rf /var/lib/apt/lists /var/cache/apt/archives

FROM alpine:3.16

COPY download.sh download.sh

RUN apk add --no-cache wget bash && chmod +x download.sh && ./download.sh
