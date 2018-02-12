# mydotfiles
## my first customization of my shell

This is the documentation regarding the customization of my Mac terminal and shell.
Ill talk about what I used, how, and why.

### 01 Changes in the Terminal>Preferences:
![Screenshot of my settings](https://i.imgur.com/LR3MtKu.png "Preferences of my terminal")

### 02 Customizing .bash_profile

to install, create or find your .bash_profile in your home directory.


```
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
```

### 03 Customizing .git_confidg

haven't changed much here, added chrome to be the default browser:

```
[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true
[user]
	name = vallleynl
	email = marc_dalhuisen@hotmail.com
	mail = marc_dalhuisen@hotmail.com
[core]
	autocrlf = input

# Added the following myself

[web]
		browser = google-chrome

```

### 04 installing Z(1)
* created a directory(dr) in the home dr. -> .z-files
* Added the files from https://github.com/rupa/z
* added ``` source .z-files/z.sh ``` to the .bash_profiles

