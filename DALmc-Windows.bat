@echo off

echo [DALmc] Windows DALmc installer


if exist %APPDATA%\.minecraft\ (
  echo [DALmc] .minecraft directory exists

) else (
  echo [DALmc] The .minecraft directory literally doesn't exist, you should install minecraft first.
  exit 0
)



if exist %APPDATA%\.minecraft\mods\ (
  echo [DALmc] mods directory exists. Deleting it now...
  RD /S /Q "%APPDATA%\.minecraft\mods\"

) else (
  echo [DALmc] The mods directory doesn't exist.

)

cd \
cd %APPDATA%\.minecraft\

echo [DALmc] Moved to the .minecraft directory.

echo [DALmc] Cloning the mods repository...
git clone https://github.com/DALmc/mods.git
echo [DALmc] Cloned the mods repository.






if exist %APPDATA%\.minecraft\config\ (
   echo [DALmc] config folder exists. Deleting it now...
  RD /S /Q "%APPDATA%\.minecraft\config\"
::
) else (
  echo [DALmc] The config folder doesn't exist.
::
)


echo [DALmc] Cloning the config repository...
git clone https://github.com/DALmc/config.git
echo [DALmc] Cloned the config repository.

echo [DALmc] Successfully installed the DALmc modpack!
echo [DALmc] Done!
