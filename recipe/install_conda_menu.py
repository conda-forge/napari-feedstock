import os
import shutil

pkg_version = os.environ["PKG_VERSION"]
if not pkg_version:
    import napari
    pkg_version = napari.__version__
prefix = os.environ.get("PREFIX", os.environ.get("CONDA_PREFIX"))

config_path = os.path.join("resources", "conda_menu_config.json")
with open(config_path, "r") as f:
    content = f.read().replace("__PKG_VERSION__", pkg_version)

menu_dir = os.path.join(prefix, "Menu")
os.makedirs(menu_dir, exist_ok=True)
menu_json_path = os.path.join(menu_dir, "napari-menu.json")
with open(menu_json_path, "w") as f:
    f.write(content)

shutil.copy(os.path.join("napari", "resources", "logo.png"), os.path.join(menu_dir, "napari.png"))
shutil.copy(os.path.join("napari", "resources", "icon.icns"), os.path.join(menu_dir, "napari.icns"))
shutil.copy(os.path.join("napari", "resources", "icon.ico"), os.path.join(menu_dir, "napari.ico"))
