FROM alpine:3.12.0
WORKDIR /workdir
RUN apk --update add postgresql-client
# see https://github.com/Azure/azure-storage-azcopy/issues/621
RUN apk add libc6-compat
RUN rm -rf /var/cache/apk/*
RUN wget -O azcopy_v10.tar.gz https://aka.ms/downloadazcopy-v10-linux && tar -xf azcopy_v10.tar.gz --strip-components=1
RUN rm azcopy_v10.tar.gz
RUN chmod +x azcopy
RUN mv azcopy /usr/local/bin
COPY backup.sh .
RUN chmod +x /workdir/backup.sh
ENTRYPOINT /workdir/backup.sh
