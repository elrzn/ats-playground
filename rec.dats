#include "share/atspre_staload.hats"

fun factorial(x: int): int =
  let fun factorial_recur(acc: int, rem: int): int =
    if rem = 0 then
      acc
    else
      factorial_recur(acc * rem, rem - 1)
  in
    factorial_recur(1, x)
  end

val () = println!(factorial(5))

fun fibo(n: int): int =
  if n > 2 then
    fibo(n - 1) + fibo(n - 2)
  else
    1

fun is_even(n: int): bool =
  if n > 0 then
    is_odd(n - 1)
  else true
and is_odd(n: int): bool =
  if n > 0 then
    is_even(n - 1)
  else false

val () = println!(is_even(1))
val () = println!(is_even(2))

implement main0() = ()