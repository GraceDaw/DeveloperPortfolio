# Linux System Profile

## 1. System Specifications

| Component | Specification |
|---|---|
| Processor | 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz |
| CPU Cores | 4 cores |
| Logical CPUs | 8 threads |
| RAM | 7.6 GiB total, 7.1 GiB available to WSL2 |
| Storage | 1 TB virtual disk reported by WSL2 |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel | Linux 6.18.58.1-microsoft-standard-WSL2 |
| Architecture | x86_64 |

**Note:** These specifications are reported by the Ubuntu WSL2 environment.
The storage shown is a virtual disk, not a confirmed physical drive specification.

## 2. Number System Conversions

### A. Convert Decimal 75 to Binary

Repeatedly divide the decimal number by 2 and record the remainders.

| Division | Quotient | Remainder |
|---|---:|---:|
| 75 / 2 | 37 | 1 |
| 37 / 2 | 18 | 1 |
| 18 / 2 | 9 | 0 |
| 9 / 2 | 4 | 1 |
| 4 / 2 | 2 | 0 |
| 2 / 2 | 1 | 0 |
| 1 / 2 | 0 | 1 |

Read the remainders from bottom to top.

**Answer: (75)10 = (1001011)2**

### B. Convert Binary 110101 to Decimal

Multiply each binary digit by its corresponding power of 2.

| Binary digit | Position | Calculation |
|---|---:|---:|
| 1 | 5 | 1 x 2^5 = 32 |
| 1 | 4 | 1 x 2^4 = 16 |
| 0 | 3 | 0 x 2^3 = 0 |
| 1 | 2 | 1 x 2^2 = 4 |
| 0 | 1 | 0 x 2^1 = 0 |
| 1 | 0 | 1 x 2^0 = 1 |

Total = 32 + 16 + 0 + 4 + 0 + 1 = 53

**Answer: (110101)2 = (53)10**

## 3. Why Computers Use Binary

Computers use binary because digital electronic circuits can reliably represent two states, ON (1) and OFF (0), making data storage and processing simpler and more reliable.
