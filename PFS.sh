#!/bin/bash

          {}

date=$(date)


banner() {
printf "\n"
printf "\e[1;77m     ______________________________  \e[0m\n"
printf "\e[1;77m     \______   \_   _____/   _____/  \e[0m\n"
printf "\e[1;77m      |     ___/|    __) \_____  \   \e[0m\n"
printf "\e[1;77m      |    |    |     \  /        \  \e[0m\n"
printf "\e[1;77m      |____|    \___  / /_______  /  \e[0m\n"
printf "\e[1;77m                    \/          \/   \e[0m\n"
printf "\n"
printf "\e[1;77m      Password  Stealer      File    \e[0m\n"
printf "\n"
printf "\e[1;92m      Für    Termux      Gedacht!    \e[0m\n"
}


menu() {

clear
banner
printf "\n"
printf "\e[1;77m [1] Browser Accounts \e[0m\n"
printf "\e[1;77m [2] Files \e[0m\n"
printf "\e[1;77m [3] About \e[0m\n"
printf "\e[1;77m [4] Update \e[0m\n"
printf "\e[1;77m [0] Exit \e[0m\n"
printf "\n"
read -p $'\e[1;92m  [?] Was willst du Mitgehenlassen : \e[0m' cho

if [[ $cho == "1" ]]; then
Browser
elif [[ $cho == "2" ]]; then
Files
elif [[ $cho == "3" ]]; then
About
elif [[ $cho == "4" ]]; then
Update
elif [[ $cho == "0" ]]; then
clear
Ende
else
menu
fi

}

Browser() {

Ende

}

Files() {

clear
banner
printf "\n"
printf "\e[1;77m [1] Files anzeigen (Gespeicherte) \e[0m\n"
printf "\e[1;77m [2] Files exportieren (Gespeicherte) \e[0m\n"
printf "\e[1;77m [3] Files klauen \e[0m\n"
printf "\e[1;77m [4] Files löschen \e[0m\n"
printf "\e[1;77m [0] Back \e[0m\n"
read -p $'\e[1;92m  [?] Was willst du                : \e[0m' aus

if [[ $aus == "1" ]]; then
FileAnzeige
elif [[ $aus == "2" ]]; then
FileExport
elif [[ $aus == "3" ]]; then
FileKlauen
elif [[ $aus == "4" ]]; then
FileLöschen
elif [[ $aus == "0" ]]; then
clear
menu
else
Files
fi

}

FilesAnzeige() {

if [[ Files/ == exist ]]; then
Filesexist
else
Filesnotexist
fi

}

Filesexist() {

if [[ Files/* == exist ]]; then
Fileszeigen
else
Filesempty
fi
clear
banner
ls Files/

}

Fileszeigen() {

clear
banner
ls Files/

printf "\n"
printf "\e[1;77m [^] FILES [^] \e[0m\n\n"
printf "\e[1;77m [0] Back \e[0m\n"

read -p $'  [?] Was willst du                : ' aus

if [[ $aus == "0" ]]; then
Files

else
Fileszeigen
fi

}

Filesempty() {

clear
banner

printf "\n"
printf "\e[1;77m [X] Da ist nix drin ! [X] \e[0m\n\n"
printf "\e[1;77m [0] Back \e[0m\n"

read -p $'  [?] Was willst du                : ' aus

if [[ $aus == "0" ]]; then
Files

else
Filesempty
fi


}

Filesnotexist() {

banner

printf "\n"
printf "\e[1;77m [!] Files NOT Exist [!] \e[0m\n\n"
printf "\e[1;77m [0] Back \e[0m\n"

read -p $'  [?] Was willst du                : ' aus

if [[ $aus == "0" ]]; then
Files

else
Filesnotexist
fi

}

About() {

clear
banner
printf "\n\e[1;92m                       Geile Socke! \e[0m\n\n"
printf "\n\e[1;92m                          v.1.2.5 \e[0m\n\n"
printf "\n\e[1;92m                       ___________________ \e[0m\n\n"
printf "\n\e[1;92m                       made by Lyps_Terann \e[0m\n\n"
printf "\n\e[1;92m                       made by ??????????? \e[0m\n\n"
printf "\n\e[1;92m                       ___________________ \e[0m\n\n"

}

Ende() {
banner
printf "\n\e[1;92m[!]         ENDE        [!] \e[0m\n\n"
}
menu
