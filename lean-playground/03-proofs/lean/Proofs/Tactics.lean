import Mathlib

/-!
## 核心 tactic：intro / exact / rw / simp / ring / norm_num / omega
-/

example (P : Prop) (h : P) : P := h

example (n : Nat) : n + 0 = n := by
  simp

example (a b : Nat) : a + b = b + a := by
  rw [Nat.add_comm]

example : ∀ x : Int, (x + 1)^2 = x^2 + 2*x + 1 := by
  intro x
  ring

example (n : Nat) : n < n + 1 := by
  omega

example : (2 : Nat) + 2 = 4 := by
  norm_num

example (x y : Nat) (h : x = y) : y = x :=
  h.symm

example (a b c : Nat) (h₁ : a = b) (h₂ : b = c) : a = c := by
  rw [h₁, h₂]
