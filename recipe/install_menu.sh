#!/bin/bash

set -euxo pipefail

mkdir -p "${PREFIX}/Menu"
if [[ $target_platform == linux* ]]; then
    cp "${RECIPE_DIR}/menu-linux.json" "${PREFIX}/Menu/napari.json"
    cp "${SRC_DIR}/napari/resources/logo.png" "${PREFIX}/Menu/napari.png"
else
    cp "${RECIPE_DIR}/menu-osx.json" "${PREFIX}/Menu/napari.json"
    cp "${SRC_DIR}/resources/icon.icns" "${PREFIX}/Menu/napari.icns"
fi