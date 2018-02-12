welcome() {
    #------------------------------------------
    #------WELCOME MESSAGE---------------------

    echo "/// 👋  -  Welcome, Marc  - 👋  ///"
    echo -e ""; cal ;
    echo -ne "Today is "; date #date +"Today is %A %D, and it is now %R"
    echo -e ""
    echo "";
}
welcome;

#Display of emoji / user/ computername/ time
export PS1=' [\e[0;34m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;36m\]\W\[\e[m\] \[\e[0;31m\]\t\[\e[m\]] \e[1;37m[:$(pwd)]\e[m\] 👉 $  '

#Ignrores capitalization wiht tab completion
bind "set completion-ignore-case on"

##=---------Keybinds--------
##=-------------------------
# Go all the way to top of file structure
alias .="open ."
# Go one up in file structure
alias ..="cd .."
# Go all the way to top of file structure
alias ...="cd ~/"

source .z-files/z.sh
