# BanglaMiniLang 🇧🇩  
### A Bangla-Based Mini Programming Language Using Flex & Bison

BanglaMiniLang is a **mini programming language** built with **Bangla keywords** to demonstrate the **front-end phases of a compiler**.  
The project is implemented using **Flex (Lexical Analyzer)** and **Bison (Parser Generator)** in **C**, and is designed for **Compiler Design Lab** coursework.

---

## 🚀 Features

- Bangla keywords for programming constructs
- Arithmetic operations: যোগ, বিয়োগ, গুন, ভাগ
- Conditional structure: যদি … তারপর … শেষ
- Multiple programs supported in a single input file
- Clear, step-by-step build and run process
- macOS compatible

---

## 🛠️ Tech Stack

- **Language:** C  
- **Lexer:** Flex  
- **Parser:** Bison  
- **Compiler:** GCC / Clang  
- **OS:** macOS  

---

## 📁 Project Structure

```text
BanglaMiniLang/
├── bangla.l        # Flex lexer
├── bangla.y        # Bison parser
├── main.c          # Driver program
├── test_5.bn       # Test file (5 programs)
├── README.md
