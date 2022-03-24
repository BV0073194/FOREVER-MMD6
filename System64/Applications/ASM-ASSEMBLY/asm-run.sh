clear
echo $'Type a file name (to find a file type ls)\nor leave blank for test file:'
read entry

if [[ $entry == "" ]]; then
  entry="hello"
fi

if [[ $entry == "ls" ]]; then
  clear
  echo $'Printing directory:\n\n'
  #length=( $(ls) )
  #for i in "${length[@]}"; 
    #do echo "...."; 
  #done
  ls "./System64/asm-files/asm-output/"
  read -p $'\nHit enter to return to shell ><\n'
  bash ./System64/cmds/asm-run.sh
fi

"./System64/asm-files/asm-output/"$entry

read -p $'\nHit enter to return to shell ><\n'

bash main.sh