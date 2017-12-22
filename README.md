# Bast
A transpiler for Batch and Bash.

# Syntax
| | Bast | Batch | Bash |
| --- | --- | --- | --- |
| Assignment | `a = 1` | `set /a a=1` | `a=$((1))` |
| Printing | `print 1` | `echo 1` | `"echo" "-e" $((1))` |
| Expression | `a = 1 + 2` | `set /a a=^(1 + 2^)` | `a=$((1 + 2))`