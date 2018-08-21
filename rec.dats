#include "share/atspre_staload.hats"

fun fact(n: int): int =
  if n > 0 then
    n * fact(n - 1)
  else
    1

val () = println!("fact(10) = ", fact(10))

fun testfact(n: int) : void =
  if n > 0 then (
    testfact(n - 1);
    println!("fact(", n - 1, ") = ", n - 1);
  )

val () = testfact(100)

fun fibo(n: int): int =
  if n > 2 then
    fibo(n - 1) + fibo(n - 2)
  else
    1

implement main0() = ()