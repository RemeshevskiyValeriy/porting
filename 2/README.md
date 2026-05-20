# Workbook 5 — Task 1

## Discipline

Software Porting

## Topic

Binary reuse and source code reuse.

## Task

Develop a program that creates a binary file which can be run on multiple platforms, for example Windows and Linux. The program should perform a simple task, such as printing text to the screen.

## Description

This project demonstrates source code reuse across different platforms.

The program is written in C and prints a message to the console.

The same source file `main.c` can be compiled on different operating systems:

- on Windows into `app_windows.exe`;
- on Linux into `app_linux`.

Although the binary files are different because Windows and Linux use different executable formats, the same source code is reused.

## Build on Windows

```powershell
gcc main.c -o app_windows.exe
```

## Run on Windows

```powershell
app_windows.exe
```


## Build on Linux

```bash
gcc main.c -o app_linux
```

## Run on Linux

```bash
./app_linux
```
