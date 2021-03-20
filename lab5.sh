con="y"
while test $con = "y";do {
  echo -n "Enter file name: "
  read name

  if test -f "${name}"; then { 
    echo "$name is an ordinary file"
    echo "File content of $name : "
    cat $name
    echo ""
  }

  elif test -d "$name"; then {
    
    echo "$name is a directory"
    echo "- List subdir and files in $name: "
    ls  $name
    
    folders=$(printf "%s " $(ls -d $name/*))
    
    IFS=' ' read -r -a array <<< "$folders"
    
    count=0
    for element in "${array[@]}"
    do {
        if find -- "$element" -prune -type d -empty | grep -q .; then {
          count=$((count+1))
          if [ $count -eq 1 ]; then
            echo "- Empty folders are: "
          fi  
          printf '%s\n' "$element"
        }  
        fi
    } 
    done
    if [[ $count -eq 0 ]]; then 
      echo "- There is no empty folder" 
    fi  
 }

  else                                   
    echo "$name afile does not exist, or it is neither an ordinary file not a
directory."
  fi

  echo -n "Continue(y/n)"
  read con 
}
done
exit 0
