#!/bin/bash

RELEASE=56.0a1
TARBALL="firefox-$RELEASE.en-US.linux-x86_64.tar.bz2"

wget https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/$TARBALL

if [ $(stat -c %U /opt) == "root" ]; then
   echo "/opt/ is not available for writing."
   exit
fi
if [ -d "/opt/firefox" ]; then
   rm -r /opt/firefox
   mkdir /opt/firefox
fi

tar -xvjf $TARBALL -C /opt
rm $TARBALL

sudo desktop-file-install --dir=/usr/share/applications firefox-nightly.desktop
