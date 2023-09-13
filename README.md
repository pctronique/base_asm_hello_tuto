# base_asm_hello_tuto

Pour un tuto sur le fonctionnement du microprocesseur.

## Linux
`$ ./install.sh`
`$ ./bin/terminal.sh`

## terminal
### compile 1
`# ./comp.sh`
`# exit`

### compile 2
`# nasm -f win64 stringAsm1.asm -o stringAsm1.o`
`# ld stringAsm1.o -o stringAsm1`

### disassemble
`# objdump --disassemble-all -s stringAsm1`
#### OR
`# objdump --disassemble -sj .data stringAsm1`
#### OR
`# objdump --disassemble-all -s stringAsm1`
#### OR
`# objdump --disassemble-all -s stringAsm1`
#### OR
`# objdump -D stringAsm1`

### search package
`# apt-cache search gcc`

### install package
`# apt install gcc`

### search file
`# find -name gcc`
