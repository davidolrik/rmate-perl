#!/bin/bash

INSTALL_PATH=$1

# If no install path is given, install in users home directory
if [[ -z "${INSTALL_PATH}" ]]; then
    INSTALL_PATH="$HOME/bin"
fi

# We use bash to install with
BASH="/bin/bash"

# Use bash with sudo if installing outside users home directory
if [[ "$INSTALL_PATH" != "$HOME"*  ]]; then
    BASH="sudo ${BASH}"
fi

echo "Installing rmate-perl into ${INSTALL_PATH}"
$BASH -- <<INSTALLER
    mkdir -p "${INSTALL_PATH}"
    curl -Lo "${INSTALL_PATH}/rmate" https://raw.github.com/davidolrik/rmate-perl/master/rmate
    chmod 755 "${INSTALL_PATH}/rmate"
    ln -sf "${INSTALL_PATH}/rmate" "${INSTALL_PATH}/mate"
    ln -sf "${INSTALL_PATH}/rmate" "${INSTALL_PATH}/rsub"
    ln -sf "${INSTALL_PATH}/rmate" "${INSTALL_PATH}/subl"
INSTALLER
echo "Done"
