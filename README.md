# Bachelor
## Topic
Implementierung eines synthesefähigen KI-Beschleunigers auf der Basis Systolischer Arrays in SystemC

(Implementation of a synthesis-capable AI accelerator based on systolic arrays in SystemC)
## Description
**Parameterized Systolic Arrays with Ternary Arithmetic**

An implementation of parameterized systolic arrays, the balanced ternary system, its addition and multiplication in SystemC
## Encoding
| Decimal | Balanced ternary a | Balanced ternary b |
| --- | --- | --- |
| -1 | 0 | 0 |
| 0 | 0 | 1 |
| Or | 1 | 0 |
| 1 | 1 | 1 |

(Decimal = Balanced ternary a + Balanced ternary b - 1)
## Dependencies
| Dependency name | Tested version | Minimum version |
| --- | --- | --- |
| [AMD Vivado Design Suite](https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado.html) | 2024.2 | 2019.1 |
| [CMake](https://www.cmake.org) | 3.31 | 3.12 |
| [Dialog](https://invisible-island.net/dialog) | 1.3 | - |
| [GNU Compiler Collection](https://gcc.gnu.org) | 14.2 | - |
| [GNU Make](https://www.gnu.org/software/make) | 4.4 | - |
| [Intel Compiler for SystemC](https://github.com/intel/systemc-compiler) | 1.6.13 | [1.6.12](https://github.com/intel/systemc-compiler/issues/80) |
| [Stack](https://www.haskellstack.org) | 3.3 | - |
| [SystemC](https://www.accellera.org/downloads/standards/systemc) | 3.0 | 2.3 |
| [SystemVerilog to Verilog](https://github.com/zachjs/sv2v) | 0.0.12 | - |

(Compatibility with other versions is possible, but not guaranteed)
## Automated installation (binary, synthesis, and conversion)
```bash
curl https://raw.githubusercontent.com/libalis/bachelor/refs/heads/main/Source%20Code/sh/install.sh | bash
```
## Manual installation (binary only)
```bash
# 1. Clone the git repository:
git clone https://github.com/libalis/bachelor.git
cd "bachelor/Source Code"
# 2. Compile using the defaults:
make clean
make
# Or using the dialog:
make config
# 3. Run the compiled binary:
./build/bachelor
```
## Support
Open an issue [here](https://github.com/libalis/bachelor/issues)
## Roadmap
- [X] Learn SystemC
- [X] Implement Makefile
- [X] Implement full adder
- [X] Implement test bench
- [X] Implement main function
- [X] Implement balanced ternary system
- [X] Implement balanced ternary system addition
- [X] Implement balanced ternary system subtraction
- [X] Implement balanced ternary system multiplication
- [X] Implement balanced ternary system systolic array
- [X] Make balanced ternary system systolic array parameterized
- [X] Make balanced ternary system systolic array synthesizable
- [X] Synthesize balanced ternary system systolic array
## Status
In active development
## Author
Robert Kagan
