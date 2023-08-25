FROM tailscale/tailscale:stable
ENV TS_DEBUG_FIREWALL_MODE=auto
RUN apk add openssh-server && sed -i 's/GatewayPorts no/GatewayPorts yes/g' sshd_config
