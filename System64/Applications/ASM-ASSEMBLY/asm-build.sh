clear
echo $'Type a folder name (to find a folder type ls)\nor leave blank for root system:'
read entry

entry_folder="./System64/asm-files/"$entry"/"
output_folder="./System64/asm-files/asm-output/"

for entry in `ls $entry_folder`; do
  if [[ $entry == *".asm"* ]]; then
    echo "asm-file:" $entry" was found!"
    SUBSTR=$(echo $entry | cut -d'.' -f 1)
    nasm -felf64 $entry_folder$entry
    ld -m elf_x86_64 -s -o $output_folder$SUBSTR $entry_folder$SUBSTR.o --no-warn-mismatc
    rm $entry_folder*.o
    #clear
  fi
  if [[ $entry == *".s"* ]]; then
    echo "asm-file:" $entry" was found!"
    SUBSTR=$(echo $entry | cut -d'.' -f 1)
    nasm -f elf64 -o $entry_folder$SUBSTR.o $entry_folder$entry
    ld -o $output_folder$SUBSTR $entry_folder$SUBSTR.o
    rm $entry_folder*.o
    #clear
  fi
done



read -p $'\nHit enter to return to shell ><\n'

bash main.sh