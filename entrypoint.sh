#!/bin/bash
set -e -x

if [ "${USERNAME}" != "" ] && [ "${PASSWORD}" != "" ]; then
    useradd "${USERNAME}"
    echo -e "$PASSWORD\n$PASSWORD" | passwd "${USERNAME}"
fi

if [ -f /var/lib/shellinabox/certificate.pem ]; then
    shellinaboxd --user shellinabox --group shellinabox
else
    shellinaboxd --user shellinabox --group shellinabox --disable-ssl
fi