# Mini Compiler using Flex and Bison

## Student Details
- Name: Sachitha Ravichandran  
- Register No: RA2311026050007  
- Subject: Compiler Design 

## Description
This project implements a simple compiler for a Domain Specific Language (DSL).

## Features
- Lexical Analysis using Flex
- Parsing using Bison
- Symbol Table Management
- Semantic Analysis
- Intermediate Code Generation

## Tools Used
- Flex
- Bison
- GCC
- C Language

## Sample Input
SET a = 5
SET b = 10
ADD a b
SUB a b
PRINT a

## Output
Assigned a = 5
Assigned b = 10
t1 = a + b
t1 = a - b
Print a = 5

## How to Run

```bash
flex lexer.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o compiler
./compiler < ../test/input.txt
