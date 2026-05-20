# Workbook 6 — Task 1

## Discipline

Software Porting

## Topic

Using interpreted code. ABI emulation. Virtualization. Web technologies.

## Task

Develop a Python program that:

1. Reads data from a text file containing a list of numbers.
2. Performs mathematical operations on these numbers.
3. Prints results to the console and saves them into a new text file.

## Description

This project demonstrates the use of interpreted Python code to create a portable application.

The program:

- reads numbers from `input.txt`;
- calculates:
  - sum;
  - subtraction;
  - multiplication;
- prints results to the console;
- writes results into `results.txt`.

The application is cross-platform and can run on any operating system where Python is installed.

---

## Project structure

```txt
workbook6-python-portable/
│
├── main.py
├── input.txt
├── results.txt
└── README.md
```

---

## Input example

`input.txt`

```txt
10
5
2
3
```

---

## Run on Windows

```bash
python main.py
```

---

## Run on Linux

```bash
python3 main.py
```

---

## Example output

```txt
Calculation results
-------------------
Numbers: [10.0, 5.0, 2.0, 3.0]
Sum: 20.0
Subtraction: 0.0
Multiplication: 300.0
```

---

## Technologies used

- Python 3
- Standard Python libraries:
  - `os`
  - file operations (`open()`)

---

## Conclusion

The program satisfies portability requirements because it is implemented in Python and uses only standard libraries. It can be executed on Windows, Linux, macOS, or any other platform with an installed Python interpreter.