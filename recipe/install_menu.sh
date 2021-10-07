#!/bin/bash

set -euxo pipefail

mkdir -p "${PREFIX}/Menu"
cp "${SRC_DIR}/resources/icon.ico" "${PREFIX}/Menu/napari.ico"
if [[ $target_platform == linux* ]]; then
    cp "${RECIPE_DIR}/menu-linux.json" "${PREFIX}/Menu/napari.json"
else
    cp "${RECIPE_DIR}/menu-osx.json" "${PREFIX}/Menu/napari.json"
fi