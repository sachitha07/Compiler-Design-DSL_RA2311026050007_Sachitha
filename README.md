# Mini Compiler using Flex and Bison


## 👩‍💻 Student Details

* **Name:** Sachitha Ravichandran
* **Register No:** RA2311026050007
* **Subject:** Compiler Design



## 📁 Project Structure

```
CD_project/
│
├── src/
│   ├── lexer.l          # Flex – Lexical Analyzer
│   ├── parser.y         # Bison – Parser & Grammar Rules
│   ├── lex.yy.c         # Generated lexer code
│   ├── parser.tab.c     # Generated parser code
│   ├── parser.tab.h     # Header file
│   ├── compiler         # Executable file
│
├── test/
│   └── input.txt        # Sample DSL input
│
├── output/
│   └── RA2311026050007_Sachitha_Output.png
│
├── docs/
│   └── Report.pdf
│
└── README.md
```



## 📌 Description

This project implements a simple compiler for a Domain-Specific Language (DSL) using Flex and Bison.
It demonstrates the basic phases of a compiler including lexical analysis, parsing, semantic checking, and intermediate code generation.



## ✅ Features

* Lexical Analysis using Flex
* Parsing using Bison
* Symbol Table Management
* Semantic Analysis
* Intermediate Code Generation



## ⚙️ Tools Used

* Flex
* Bison
* GCC
* C Language



## 🏗️ Compiler Architecture

```
        Input DSL Code
               │
               ▼
     ┌──────────────────┐
     │ Lexical Analysis │
     │     (Flex)       │
     └────────┬─────────┘
              │ Tokens
              ▼
     ┌──────────────────┐
     │ Syntax Analysis  │
     │     (Bison)      │
     └────────┬─────────┘
              │ Parse Tree
              ▼
     ┌──────────────────┐
     │ Semantic Analysis│
     │  (Symbol Table)  │
     └────────┬─────────┘
              │ Checked Data
              ▼
     ┌──────────────────┐
     │ Intermediate Code│
     │   Generation     │
     └────────┬─────────┘
              ▼
           Output
```



## 📥 Sample Input

```
SET a = 5
SET b = 10
ADD a b
SUB a b
PRINT a
```



## 📤 Output

```
Assigned a = 5
Assigned b = 10
t1 = a + b
t1 = a - b
Print a = 5
```



## 🚀 How to Run

### Prerequisites

```
sudo apt update
sudo apt install gcc flex bison -y
```



### Build

```
cd src
flex lexer.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o compiler
```



### Run

```
./compiler < ../test/input.txt
```



## 📄 Conclusion

This project successfully demonstrates a mini compiler pipeline using Flex and Bison. It covers essential compiler phases and provides a clear understanding of compiler design concepts.

