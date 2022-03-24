rm -rf RECOVERY-DRIVE/FOREVER-MMD6
clear
root_folder="FOREVER-MMD6"
#-d ~/$root_folder/System64/boot ] 
if [ -f ~/$root_folder/System64/boot/mmd6-boot-disk ]
then
  echo -ne 'Hit {Enter} to boot MMD6-LINUX\n'
  read -p ''
  beep -f 5232 -l 2 -d 0 -r 0 -n
  bash System64/boot/mmd6-boot-disk 
else
  echo -ne 'Hit {Enter} to enter MMD6-LINUX recovery mode\n'
  read -p ''
  git -C ./RECOVERY-DRIVE clone https://github.com/BV0073194/FOREVER-MMD6 --quiet
  clear
  mv RECOVERY-DRIVE/FOREVER-MMD6/* ~/$root_folder
  rm -rf RECOVERY-DRIVE/FOREVER-MMD6
  bash main.sh
fi
