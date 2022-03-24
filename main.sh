export NIXPKGS_ALLOW_UNFREE=1
nix-env -iA nixpkgs.wineWowPackages.stable
rm -rf RECOVERY-DRIVE
clear
root_folder="FOREVER-MMD6"
#-d ~/$root_folder/System64/boot ] 
if [ -f ~/$root_folder/System64/boot/mmd6-boot-disk ]
then
  echo -ne 'Hit {Enter} to boot MMD6-WINUX\n'
  read -p ''
  rm -rf RECOVERY-DRIVE
  bash System64/boot/mmd6-boot-disk 
else
  mkdir -p RECOVERY-DRIVE
  echo -ne 'Hit {Enter} to enter MMD6-WINUX recovery mode\n'
  read -p ''
  git -C ./RECOVERY-DRIVE clone https://github.com/BV0073194/FOREVER-MMD6 --quiet
  clear
  mv RECOVERY-DRIVE/FOREVER-MMD6/* ~/$root_folder
  rm -rf RECOVERY-DRIVE
  bash main.sh
fi
