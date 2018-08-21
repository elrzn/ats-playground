#include "share/atspre_staload.hats"

extern fun dec(x: int): int = "mac#"
extern fun factorialc(x: int): int = "mac#"

%{
int dec(int x) {
  return x - 1;
}

int factorialc(int x) {
  int acc = 1;
  while (1) {
    if (x <= 0) return acc;
    acc *= x;
    x--;
  }
}
%}

fun factorial(x: int): int =
  let fun factorial_recur(acc: int, rem: int): int =
    if rem = 0 then acc
    else factorial_recur(acc * rem, dec(rem))
  in factorial_recur(1, x) end

val () = println!(factorialc(5) = factorial(5))

implement main0() = ()