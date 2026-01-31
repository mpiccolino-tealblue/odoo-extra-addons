FROM alpine:3.20

RUN apk add --no-cache git

WORKDIR /mnt/extra-addons

# Clone exactly OCA account-financial-tools 18.0
RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-financial-tools.git .

# Keep the container running, Coolify only needs the volume content
CMD ["sh", "-c", "while true; do sleep 3600; done"]
