rm -f -R build
rm -f -R dist
mkdir build
mkdir dist
nasm -f win64 stringAsm1.asm -o build/stringAsm1.o
ld build/stringAsm1.o -o dist/stringAsm1
rm -f -R build
