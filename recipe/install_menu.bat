if not exist "%PREFIX%\Menu" mkdir "%PREFIX%\Menu"
copy "%RECIPE_DIR%\menu-windows.json" "%PREFIX%\Menu\napari.json" || exit 1
copy "%SRC_DIR%\resources\icon.ico" "%PREFIX%\Menu\napari.ico" || exit 1