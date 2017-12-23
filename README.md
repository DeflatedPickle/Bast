# Bast
A transpiler for Batch and Bash.

# Syntax
| | Bast | Batch | Bash |
| --- | --- | --- | --- |
| Assignment | `a = 1` | `set /a a=1` | `a=$((1))` |
| Printing | `print(1)` | `echo 1` | `"echo" "-e" $((1))` |
| Expression | `a = 1 + 2` | `set /a a=^(1 + 2^)` | `a=$((1 + 2))` |
| If Statement | `if (a == 1) {print("Yes.")} else {print("No.")}` | `if !a! EQU 1 (echo Yes.) else (echo No.)` | `if ["$a" == $((1))]; then "echo" "-e" "Yes." else "echo" "-e" "No." fi`