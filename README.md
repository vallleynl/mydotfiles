# mydotfiles
## my first customization of my shell

This is the documentation regarding the customization of my Mac terminal.
Ill talk about what I used, how, and why.

### 01 Changes in the Terminal>Preferences:
![Screenshot of my settings](https://i.imgur.com/LR3MtKu.png "Preferences of my terminal")

### **02 Customizing .bash_profile**

```
welcome() {
    #------------------------------------------
    #------WELCOME MESSAGE---------------------
    # customize this first message with a message of your choice.
    # this will display the username, date, time, a calendar, the amount of users, and the up time.
    #clear
    # Gotta love ASCII art with figlet

    #toilet "Welcome, " $USER;
    echo "/// 👋  -  Welcome, Marc  - 👋  ///"
    echo -e ""; cal ;
    echo -ne "Today is "; date #date +"Today is %A %D, and it is now %R"
    echo -e ""
    echo "";
}
welcome;

#Display of emoji / user/ computername/ time
export PS1=' [\e[0;34m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \[\e[0;36m\]\W\[\e[m\] \[\e[0;31m\]\t\[\e[m\]] \e[1;37m[:$(pwd)]\e[m\] 👉   '

#Ignrores capitalization wiht tab completion
bind "set completion-ignore-case on"


```
