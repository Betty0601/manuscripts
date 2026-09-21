import Mathlib

/-!
## 搜索工具：exact? / rw? / decide / use

不会写证明时，先让 Mathlib 搜索能否直接关闭目标。
-/

example (a b : Nat) : a + b = b + a := by exact?

example (l : List α) : (l ++ []).length = l.length := by
  rw?

example : ¬ (0 : Nat) = 1 := by decide

/-- 整除：给出见证因子即可；`use` 给出见证后自动收尾。 -/
example (n : Nat) : n ∣ n * 2 := by
  use 2

example (n : Nat) : n ≤ n * 2 := by
  have key : n * 2 = n + n := by ring
  rw [key]
  exact Nat.le_add_left n n
