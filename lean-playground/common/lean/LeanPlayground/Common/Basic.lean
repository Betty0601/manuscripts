import Mathlib

/-!
# LeanPlayground.Common

`lean-playground` 下所有子项目共享的基础工具。
-/

namespace LeanPlayground

/-- 自然数前驱，零处取零（演示用定义）。 -/
def predNat : Nat → Nat
  | 0 => 0
  | _n + 1 => _n

/-- `predNat n` 永远不超过 `n`。 -/
theorem predNat_le : ∀ n : Nat, predNat n ≤ n
  | 0 => Nat.le_refl 0
  | n + 1 => Nat.le_succ_of_le (Nat.le_refl n)

#eval predNat 5  -- 4
#eval predNat 0  -- 0

end LeanPlayground
