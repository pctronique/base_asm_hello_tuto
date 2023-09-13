# base_asm_hello_tuto

Pour un tuto sur le fonctionnement du microprocesseur.

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#création-du-conteneur">Création du conteneur</a></li>
    <li><a href="#rechercher-un-package-docker">Rechercher un package (Docker)</a></li>
    <li><a href="#install-un-package-docker">Install un package (Docker)</a></li>
    <li><a href="#compile-1">Compile 1</a></li>
    <li><a href="#compile-2">Compile 2</a></li>
    <li><a href="#disassemble">Disassemble</a></li>
  </ol>
</details>

## Création du conteneur
Pour la création du conteneur docker pour le projet.
```
$ ./install.sh
```
## Rechercher un package (Docker)
Si vous avez besoin d'un package pour votre projet dans le conteneur. Vous pouvez rechercher les packages disponibles pour le conteneur.
```
$ ./bin/terminal.sh
# apt-cache search gcc
```

## Install un package (Docker)
Si vous avez besoin d'installer un package dans votre conteneur.
```
$ ./bin/terminal.sh
# apt install gcc
```

## Compile
Pour compiler votre projet.
```
$ ./bin/terminal.sh
# ./comp.sh
# exit
```

## disassemble
Pour décompiler votre projet.
```
$ ./bin/terminal.sh
# objdump -D stringAsm1
```

### Ou

```
$ ./bin/terminal.sh
# objdump --disassemble-all -s stringAsm1
```
### Ou

```
$ ./bin/terminal.sh
# objdump --disassemble -sj .data stringAsm1
```

### Ou

```
$ ./bin/terminal.sh
# objdump --disassemble-all -s stringAsm1
```

### Ou

```
$ ./bin/terminal.sh
# objdump --disassemble-all -s stringAsm1
```

