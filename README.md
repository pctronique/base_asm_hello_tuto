# base_asm_hello_tuto

Pour un tuto sur le fonctionnement du microprocesseur.

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#linux">Linux</a></li>
    <li><a href="#search-package">Search package</a></li>
    <li><a href="#install-package">Install package</a></li>
    <li><a href="#compile-1">Compile 1</a></li>
    <li><a href="#compile-2">Compile 2</a></li>
    <li><a href="#disassemble">Disassemble</a></li>
  </ol>
</details>

## Linux

```
$ ./install.sh
$ ./bin/terminal.sh
```
## Search package

```
$ ./bin/terminal.sh
# apt-cache search gcc
```

## Install package

```
$ ./bin/terminal.sh
# apt install gcc
```

## Compile 1

```
$ ./bin/terminal.sh
# ./comp.sh
# exit
```

## Compile 2

```
$ ./bin/terminal.sh
# nasm -f win64 stringAsm1.asm -o stringAsm1.o
# ld stringAsm1.o -o stringAsm1
```

## disassemble

```
$ ./bin/terminal.sh
$ ./bin/terminal.sh
# objdump --disassemble-all -s stringAsm1
```
### OR

```
$ ./bin/terminal.sh
# objdump --disassemble -sj .data stringAsm1
```

### OR

```
$ ./bin/terminal.sh
# objdump --disassemble-all -s stringAsm1
```

### OR

```
$ ./bin/terminal.sh
# objdump --disassemble-all -s stringAsm1
```

### OR

```
$ ./bin/terminal.sh
# objdump -D stringAsm1
```

