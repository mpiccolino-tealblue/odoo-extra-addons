FROM alpine:3.20

RUN apk add --no-cache git

WORKDIR /mnt/extra-addons

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-financial-tools.git .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-invoicing.git .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-financial-reporting.git .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-reconcile.git .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-analytic .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-invoice-reporting .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-fiscal-rule .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-closing .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-budgeting .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/mis-builder .

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/l10n-italy .


# Keep the container running, Coolify only needs the volume content
CMD ["sh", "-c", "while true; do sleep 3600; done"]
