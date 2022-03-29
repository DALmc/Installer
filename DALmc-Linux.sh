echo "[DALmc] Linux DALmc Modpack installer"



if [ -d "/.minecraft" ]
then
    echo "[DALmc] .minecraft directory exists."
else
    echo "[DALmc] The .minecraft directory literally doesn't exist, you should install minecraft first."
    exit 0
fi

# ----------------------------------------------------

if [ -d "/.minecraft/mods" ]
then
    echo "[DALmc] mods directory exists. Deleting it now..."
    rm -d -r "/.minecraft/mods"
else
    echo "[DALmc] The mods directory doesn't exist."
    exit 0
fi

# ----------------------------------------------------

if [ -d "/.minecraft/config" ]
then
    echo "[DALmc] config directory exists. Deleting it now..."
    rm -d -r "/.minecraft/config"
else
    echo "[DALmc] The config directory doesn't exist."
    exit 0
fi

# ----------------------------------------------------


cd /.minecraft || exit 0

echo "[DALmc] Cloning the mods repository..."
git clone https://github.com/DALmc/mods.git
echo "[DALmc] Cloned the mods repository."



echo "[DALmc] Cloning the config repository..."
git clone https://github.com/DALmc/config.git
echo "[DALmc] Cloned the config repository."


echo "[DALmc] Successfully installed the DALmc modpack!"
echo "[DALmc] Done!"

exit 0
