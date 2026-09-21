import Mathlib

/-!
## 命题逻辑：∧ ∨ ¬ ↔ 与反证法
-/

example (P Q : Prop) : P → P ∨ Q := by
  intro h
  exact Or.inl h

example (P Q : Prop) : P ∧ Q → Q := by
  rintro ⟨_, hq⟩
  exact hq

example (P : Prop) : P ∧ ¬P → False := by
  rintro ⟨hp, hnp⟩
  exact hnp hp

example (P : Prop) : ¬¬P ↔ P := by
  constructor
  · intro h
    by_contra hn
    exact h hn
  · intro h
    intro hn
    exact hn h

example (n : Nat) : n = 0 ∨ n ≠ 0 := by
  by_cases h : n = 0
  · exact Or.inl h
  · exact Or.inr h
