#!/bin/bash
menu() {
	
	echo "1)Stworz nowe repo\n2)Aktualizuj swoje repo\n3)Sciagnij repo\n4)wyswietl co jest w folderze\n5)Wyczysc ekran\n6)Autor\n0)Koniec"
	echo "\nWybieram: \c"
}

nowe(){
        if [ -d .git ];
        then
        	rm -rf .git
        fi
        
        if [ -e .gitignore ];
        then
        	rm .gitignore
        fi
        
        git init
        git add *
        echo "Podaj komentarz: \c"
        read kom
        git commit -m "$kom"
        echo "Podaj nazwe repo \c"
        read nazwa
        git remote add origin https://github.com/Michaldwadwa/$nazwa.git
        git push origin master
        clear
        echo "stworzylem\n"
}

aktualizuj(){
	if [ -e .gitignore ];
        then
                rm .gitignore
        fi
        git add *
        echo "Podaj komentarz: \c"
        read kom
        git commit -m "$kom"
        git push
        clear
	echo "zaktualizowalem\n"
}
wyswietl(){
	clear
	ls -la
	echo "\n\n"
}
kopiuj(){
	echo "Podaj link: \c"
	read link
	clone $link
	clear
	echo "Skopiowalem \c"
}

autor(){
	clear
	echo "\n\nAutorem tego fantastycznego skryptu jest: YourMotherXD \n\n"
}

clear
wybor=2
while [ $wybor -gt 0 ]; do
	menu
	read wybor
	case $wybor in
	"1")
		nowe
		;;
	"2")
		aktualizuj
		;;
	"3")
		kopiuj
		;;
	"4")
		wyswietl
		;;
	"5")
		clear
		;;
	"6")
		autor
		;;
	esac
done

