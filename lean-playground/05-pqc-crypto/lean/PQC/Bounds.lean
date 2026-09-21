import Mathlib

/-!
## 概率/复杂度论证中的初等界（占位练习）

例如“坏事件至多有 2^n 种取法之一发生”这类计数界的基础构件。
-/

theorem two_pow_pos (n : Nat) : 0 < 2 ^ n :=
  pow_pos (by norm_num) n

/-- ∀ n, 2^n > n（指数增长压过线性增长）。 -/
theorem two_pow_gt : ∀ n : Nat, 2 ^ n > n
  | 0 => by decide
  | n + 1 => by
      have ih := two_pow_gt n
      simp [pow_succ]
      nlinarith

/-- 2^n 个取值的非空性：安全参数下采样空间存在。 -/
example (n : Nat) : 0 < Fintype.card (Fin (2 ^ n)) := by
  rw [Fintype.card_fin]
  exact two_pow_pos n
