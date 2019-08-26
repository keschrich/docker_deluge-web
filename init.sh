#!/bin/bash

if [ ! -f "/config/.initialized" ]; then
	if [ -z "${DELUGE_HOST}" ]; then DELUGE_HOST=deluged; fi
	if [ -z "${DELUGE_PORT}" ]; then DELUGE_PORT=58846; fi
	if [ -z "${DELUGE_USER}" ]; then DELUGE_USER=localclient; fi
	if [ -z "${DELUGE_PASS}" ]; then DELUGE_PASS=notspecified; fi

	cat <<EOF > /config/hostlist.conf.1.2
{
  "file": 1,
  "format": 1
}{
  "hosts": [
    [
      "kesch_deluge-web",
      "${DELUGE_HOST}",
      ${DELUGE_PORT},
      "${DELUGE_USER}",
      "${DELUGE_PASS}"
    ]
  ]
}
EOF
	touch /config/.initialized
fi

exec deluge-web -c config
