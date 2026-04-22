# Mini Compiler using Flex and Bison

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

## How to Run

```bash
flex lexer.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o compiler
./compiler < ../test/input.txt
