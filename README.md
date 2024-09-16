# HelloWordStartAssembler

# How run this programm?

install NASM, golink

https://www.nasm.us/
http://www.godevtool.com/#64

Run conpiler
```bash
nasm -f win32 app.asm -o app.obj
```
Run linker
```bash
golink /entry:main /console app.obj kernel32.dll
```
