# Use the official Promtail image from Grafana as a base image
FROM grafana/promtail:2.9.0

# Copy your custom configuration file into the container
COPY promtail-config.yml /etc/promtail/config.yml

# Expose port 9080 (Optional, for Promtail HTTP API)
EXPOSE 9080

# Command to run Promtail with the specified config file
ENTRYPOINT ["/bin/promtail", "-config.file=/etc/promtail/config.yml"]
