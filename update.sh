#!/bin/bash
	if [ -e .gitignore ];
        then
                rm .gitignore
        fi
        git add *
        echo "Podaj komentarz: "
        read kom
        git commit -m "$kom"
        git push
        clear
	echo "zaktualizowalem"
