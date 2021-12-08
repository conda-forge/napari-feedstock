#!/bin/bash

set -euxo pipefail

mkdir -p "${PREFIX}/Menu"
sed "s/__PKG_VERSION__/${PKG_VERSION}/" "${RECIPE_DIR}/menu.json" > "${PREFIX}/Menu/napari.json"
if [[ $target_platform == linux* ]]; then
    cp "${SRC_DIR}/napari/resources/logo.png" "${PREFIX}/Menu/napari.png"
else
    cp "${SRC_DIR}/napari/resources/icon.icns" "${PREFIX}/Menu/napari.icns"
fi