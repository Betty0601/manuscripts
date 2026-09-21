import Mathlib

/-!
## ZMod q：模 q 整数环；q 为素数时是有限域
-/

-- 7 是素数：为字面值素数登记 `Fact (Nat.Prime 7)`，域结构随之可用。
instance : Fact (Nat.Prime 7) := ⟨by decide⟩
#check (inferInstance : Field (ZMod 7))

example : (3 : ZMod 7) + 8 = 4 := by decide
example : (5 : ZMod 7) * 6 = 2 := by decide
example : (2 : ZMod 7) ^ 3 = 1 := by decide

/-- Fermat 小定理：对任意 a : ZMod p 有 a ^ p = a（这里取 p = 7）。 -/
example : ∀ a : ZMod 7, a ^ 7 = a := by
  intro a
  -- simp 同时使用 ZMod.pow_card（a^|F_7|=a）与 |ZMod 7| = 7
  simp
