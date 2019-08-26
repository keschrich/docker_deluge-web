FROM keschrich/deluge-common:1.3.15-1
LABEL maintainer=kennethj@eschrich.us

VOLUME /config

EXPOSE 8112

COPY ./init.sh /init.sh

CMD ["bash","/init.sh"]
