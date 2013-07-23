git-interactive-command
=======================

Git shortcut, preventing write the word 'git' several times in interactive mode.


##installing:

1. by ~/.bashrc:

Edit your ~/.bashrc adding this piece of code:

```bash
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
```

2. by single script:

```bash
# Clone this project
git clone https://github.com/samukasmk/git-interactive-command.git

# Access this project path cloned
cd git-interactive-command

# Move copy the script: git-interactive
sudo cp git-interactive /usr/bin

# Change Owner and Permissions 
sudo chown root:root /usr/bin/git-interactive
sudo chmod 755 /usr/bin/git-interactive
```
