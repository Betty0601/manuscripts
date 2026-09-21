import Mathlib

/-!
## 数与求值

Lean 的数字是有类型的项，字面量通过 `OfNat` 类型类解释。
-/

#eval 2 + 3 * 4            -- 14
#eval (2 : Rat) / 3        -- 2/3
#eval Nat.gcd 12 18        -- 6

#check (3 : Nat)           -- Nat
#check (3 : Int)           -- Int
#check (1 : Rat) / 2       -- Rat

/-- Mathlib 已经证明的引理可直接调用。 -/
theorem add_zero_self (n : Nat) : n + 0 = n := by simp

#check Nat.add_comm        -- ∀ (n m : Nat), n + m = m + n
