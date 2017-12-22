# Bast
A transpiler for Batch and Bash.

# Syntax
| | Bast | Batch | Bash |
| --- | --- | --- | --- |
| Assignment | `a = 1` | `set /a a=1` | `a=$((1))` |
| Printing | `print {value}` | `echo {value}` | `"echo" "-e" "{value}"` |
| Expression | `a = 1 + 2` | `set /a a=^(1 + 2^)` | `a=$((1 + 2))`