clear
root_folder="FOREVER-MMD6"
#-d ~/$root_folder/System64/boot ] 
if [ -f ~/$root_folder/System64/boot/mmd6-boot-tests ]
then
  echo -ne 'Hit {Enter} to boot MMD6-LINUX\n'
  read -p ''
  beep -f 5232 -l 2 -d 0 -r 0 -n
  ##bash System64/gcc
else
  echo -ne 'Hit {Enter} to enter MMD6-LINUX recovery mode\n'
  read -p ''
  wget https://www.dropbox.com/sh/xiuioh21409nsj5j/AAkanlaoidsgmq90mdg/DCIM0001.png?raw=1
fi