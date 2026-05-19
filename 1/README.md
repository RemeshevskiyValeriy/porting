# Workbook 2.1 — Software Porting

## Topic

Contract programming and code refactoring.

## Task

Port Windows API file reading functionality to Linux.

The original Windows code uses:

- `CreateFile`
- `ReadFile`

In this project, these functions are replaced with Linux equivalents:

- `open`
- `read`

## Build

```bash
gcc main.c -o porting_demo
```

## Run

```bash
./porting_demo
```
