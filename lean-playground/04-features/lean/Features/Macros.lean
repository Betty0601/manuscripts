import Mathlib

/-!
## 宏：tactic 宏与 command 宏

宏在展开期把一段语法翻译成另一段语法，不需要触碰内核。
-/

/-- tactic 宏：`intro_true_macro` ≡ `exact .intro`。
（同名共享宏 `intro_true` 定义在 `LeanPlayground.Common.Tactics`，
见 TacticWriting.lean 的跨模块复用；这里用不同名字避免重复声明。） -/
macro "intro_true_macro" : tactic => `(tactic| exact .intro)

example : True := by intro_true_macro

/-- command 宏：`print_nat_zero` ≡ `#check (0 : Nat)`。 -/
macro "print_nat_zero" : command => `(command| #check (0 : Nat))

print_nat_zero

/-- 复合 tactic 宏：引入假设并直接用它（整条宏在同一次展开中，
宏卫生（hygiene）保证内部名字只在展开内部可见）。 -/
macro "intro_and_exact" : tactic => `(tactic| { intro h; exact h })

example (P : Prop) : P → P := by
  intro_and_exact
