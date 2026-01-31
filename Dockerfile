FROM alpine:3.20

RUN apk add --no-cache git

WORKDIR /mnt/extra-addons

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-financial-tools.git account-financial-tools

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-invoicing.git account-invoicing

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-financial-reporting.git account-financial-reporting

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-reconcile.git account-reconcile

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-analytic account-analytic

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-invoice-reporting account-invoice-reporting

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-fiscal-rule account-fiscal-rule

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-closing account-closing

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/account-budgeting account-budgeting

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/mis-builder mis-builder

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/server-tools server-tools

RUN git clone --depth 1 --branch 18.0 \
    https://github.com/OCA/l10n-italy l10n-italy


# Keep the container running, Coolify only needs the volume content
CMD ["sh", "-c", "while true; do sleep 3600; done"]
