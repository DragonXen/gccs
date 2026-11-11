#!/bin/bash
## GCCS é um compilador android do GCC
## Burla o bloqueio de execução ELF do SELinux

DIR=$(pwd)
BIN="$HOME/.local/bin"

## so compila
comp() {
	gcc "$DIR/$1" -o /tmp/run &&
	echo "localização executável: /tmp/run"
}

start() {
        /tmp/run
}

## compila e executa
comp_start() {
	comp "$1"
	start
}

install_script() {
	echo "alias gccs=\"bash \"$DIR\"/gccs.sh\"" >> $HOME/.bashrc
	source $HOME/.bashrc
}

case "$1" in
	-c)
		comp "$2"
	;;
	-cs)
		comp_start "$2"
	;;
	-s)
		start
	;;
	-i)
		install_script
	;;
	-v)
		echo "gccs android version 1.0"
	;;
esac
