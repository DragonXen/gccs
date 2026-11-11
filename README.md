# gccs
Um compilador do gcc que contorna a execução e compilação de ELF nas pastas /sdcard limitadas pelo SELinux do Android


## Instalação
apt install gcc
bash gccs.sh -i

## Uso
### Compilação
gccs -c hello.c
### Compilação e execução
gccs -cs hello.c
### Execução após compilado
gccs -s
