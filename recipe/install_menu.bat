if not exist "%PREFIX%\Menu" mkdir "%PREFIX%\Menu"
sed "s/__PKG_VERSION__/%PKG_VERSION%/" "%RECIPE_DIR%\menu.json" > "%PREFIX%\Menu\napari.json" || exit 1
copy "%SRC_DIR%\napari\resources\icon.ico" "%PREFIX%\Menu\napari.ico" || exit 1