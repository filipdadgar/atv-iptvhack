# Specify the parent image from which we build
FROM ubuntu

# Set the working directory
WORKDIR /app

# Copy files from your host to your current working directory
ADD iptv/* /app
#RUN chmod +x appletv3-iptv
RUN chmod +x appletv3-iptv-arm64

EXPOSE 80 433

# Run the application
CMD ["./appletv3-iptv", "-config", "config.yaml"]
