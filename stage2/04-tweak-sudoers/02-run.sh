#!/bin/bash -e

# make proper adjustment to /etc/sudoers.d/010_pi-nopasswd file
FILEPATH="${ROOTFS_DIR}/etc/sudoers.d"
if [ "${FIRST_USER_NAME}" != "pi" ]; then 
    echo "${FIRST_USER_NAME} ALL=(ALL) NOPASSWD: ALL" > "${FILEPATH}/010_${FIRST_USER_NAME}-nopasswd"
    rm "${FILEPATH}/010_pi-nopasswd"
fi
