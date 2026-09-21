import Mathlib

/-!
## 归纳法

数学推导（纸面）：对 n 归纳。
基例 n = 0：0 * 0 = 0。
步进 n → n+1：(n+1)*0 = n*0 + 0 = 0，第一步用 `Nat.succ_mul`，第二步用归纳假设。
-/

theorem mul_zero_demo (n : Nat) : n * 0 = 0 := by
  induction n with
  | zero => rfl
  | succ n ih =>
      -- 注意：rw 重写后自动尝试 rfl，这里改完即闭合，无需再写 rfl
      rw [Nat.succ_mul, ih]

/-- 列表连接长度：|xs ++ ys| = |xs| + |ys|。 -/
theorem append_length (α : Type) (xs ys : List α) :
    (xs ++ ys).length = xs.length + ys.length := by
  induction xs with
  | nil => simp
  | cons _ xs ih =>
      simp [ih]
      omega
