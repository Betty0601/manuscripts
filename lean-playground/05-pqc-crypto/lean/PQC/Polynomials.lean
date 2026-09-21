import Mathlib

/-!
## (ZMod q)[X]：ML-KEM 在 (ZMod 3329)[X] / (X^n + 1) 上工作

先在完整多项式环里建立基础代数事实。
-/

open Polynomial

#check (X : Polynomial (ZMod 3329))

example (p : Polynomial (ZMod 3329)) : p * 0 = 0 :=
  mul_zero p

example (p q : Polynomial (ZMod 3329)) : p + q = q + p :=
  add_comm p q

example (p q r : Polynomial (ZMod 3329)) :
    (p + q) * r = p * r + q * r :=
  add_mul p q r
