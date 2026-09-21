import Mathlib

/-!
## 函数式编程与 IO
-/

/-- 字符串插值。 -/
def greet (name : String) : String :=
  s!"Hello, {name}, from Lean Playground!"

#eval greet "QIS"

/-- 对列表做映射与折叠（纯函数式）。 -/
def squareSum (xs : List Nat) : Nat :=
  xs.foldl (fun acc x => acc + x * x) 0

#eval squareSum [1, 2, 3, 4]   -- 30

/-- 可执行的 IO 入口：可用 `lake exe` 接线，或在编辑器中 `#eval main`。 -/
def main : IO Unit := do
  IO.println <| greet "world"
  IO.println s!"squareSum [1..4] = {squareSum [1,2,3,4]}"
