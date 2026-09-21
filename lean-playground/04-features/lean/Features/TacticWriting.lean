import Mathlib
import LeanPlayground.Common.Tactics

/-!
## 编写自己的 tactic

跨项目复用：这里直接调用共享层 `LeanPlayground.Common.Tactics` 里定义的宏。
-/

example : True := by intro_true

open Lean Elab Tactic

/-- 先记录一条 info 消息，再执行 `simp`：最小的 tactic elaboration 例子。 -/
elab "report_and_simp" : tactic => do
  Lean.logInfo "report_and_simp: running simp"
  evalTactic (← `(tactic| simp))

example (n : Nat) : n + 0 = n := by report_and_simp

/-- 复合 tactic：先 `simp` 再尝试 `omega`。 -/
elab "simp_omega" : tactic => do
  evalTactic (← `(tactic| simp))
  evalTactic (← `(tactic| omega))

example (a b : Nat) : a + 0 + b ≤ b + a := by simp_omega
