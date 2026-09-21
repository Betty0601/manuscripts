import Mathlib

/-!
## 定义：函数、归纳类型、结构
-/

/-- 阶乘（结构化递归，Lean 自动检查终止性）。 -/
def factorial : Nat → Nat
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

#eval factorial 5          -- 120

/-- 枚举类型。 -/
inductive Weekday where
  | monday
  | tuesday
  deriving DecidableEq

open Weekday

def isMonday : Weekday → Bool
  | monday => true
  | _ => false

#eval isMonday monday      -- true
#eval isMonday tuesday     -- false

/-- 结构体（带类型的字段聚合）。 -/
structure Point where
  x : Nat
  y : Nat

def Point.add (p q : Point) : Point where
  x := p.x + q.x
  y := p.y + q.y

#eval (Point.mk 1 2 |>.add (Point.mk 3 4)).x   -- 4
