import Mathlib

/-!
## 类型类

类型类（typeclass）是按类型分派的接口：加法、乘法、域结构等。
-/

-- Nat 自带加法；ZMod p 为域需要 `Fact (Nat.Prime p)`，
-- 对具体字面值素数用 decide 登记事实（Mathlib 标准写法）。
instance : Fact (Nat.Prime 7) := ⟨by decide⟩
#synth Add Nat
#synth Field (ZMod 7)

/-- 给自定义类型挂接类型类的最小例子。 -/
structure WrappedNat where
  n : Nat

instance : Add WrappedNat where
  add a b := ⟨a.n + b.n⟩

instance : Zero WrappedNat where
  zero := ⟨0⟩

#eval (WrappedNat.mk 0 + ⟨2⟩ + ⟨3⟩).n   -- 5

/-- 泛型定理对任何满足类型类的类型自动可用。 -/
example (a b : ZMod 7) : a + b = b + a := add_comm a b
