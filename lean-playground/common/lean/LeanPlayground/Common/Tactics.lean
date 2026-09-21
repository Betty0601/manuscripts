import Mathlib

/-!
# LeanPlayground.Common.Tactics

全项目共享的自定义 tactic 与宏，演示 Lean 的宏展开与 tactic 编写机制。
-/

/-- `intro_true` 直接关闭目标 `True`。 -/
macro "intro_true" : tactic => `(tactic| exact .intro)

example : True := by intro_true

open Lean Elab Tactic

/-- `easy_simp` 是对 `simp` 的最小 tactic 封装，演示 `elab ... : tactic`。 -/
elab "easy_simp" : tactic => do
  evalTactic (← `(tactic| simp))

example (n : Nat) : n + 0 = n := by easy_simp
