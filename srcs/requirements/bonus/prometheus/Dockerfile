FROM alpine:latest

# Set the version and architecture for Prometheus (adjust as needed)
ARG PROMETHEUS_VERSION="2.30.3"
ARG PROMETHEUS_ARCH="amd64"

# Create a directory for Prometheus data
RUN mkdir -p /prometheus

# Download and install Prometheus binary
RUN wget -q https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-${PROMETHEUS_ARCH}.tar.gz -O /tmp/prometheus.tar.gz && \
    tar -xzf /tmp/prometheus.tar.gz -C /tmp/ && \
    cp /tmp/prometheus-${PROMETHEUS_VERSION}.linux-${PROMETHEUS_ARCH}/prometheus /usr/local/bin/ && \
    rm -rf /tmp/prometheus.tar.gz /tmp/prometheus-${PROMETHEUS_VERSION}.linux-${PROMETHEUS_ARCH}

# Copy Prometheus configuration file
COPY ./conf/prometheus.yml /prometheus/prometheus.yml

# Expose Prometheus web UI and metrics endpoint
EXPOSE 9090

# Set the working directory
WORKDIR /prometheus

# Run Prometheus
CMD ["prometheus", "--config.file=/prometheus/prometheus.yml"]
