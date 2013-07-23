
#...

function git-interactive() {
   ###############################
   ### Git-Interactive-Command ###
   ###############################
   # By: Samuel Sampaio <samukasmk@gmail.com> [20130723]
   
   local quit
   while [[ "$quit" -ne "1" ]] ;
   do
      echo -n "command> git "
      read passed_command
      git_commands="add bisect branch checkout clone commit diff fetch grep init log merge mv pull push rebase reset rm show status tag"
      for git_command in $git_commands;
      do
         if echo $passed_command | grep "^$git_command" > /dev/null 2>&1;
         then
            git $passed_command
            echo ''
            break
         fi
      done
      if echo $passed_command | grep '^quit' > /dev/null 2>&1;
      then
         quit=1
         echo -e "good bye!\n"
      fi
   done
}

#...