import Mathlib

/-!
## 探索性命令：#check / #eval / #reduce / #print / #synth
-/

#check (1 : Nat)            -- 查看项的类型
#eval 37 * 43               -- 编译并求值
#reduce 2 + 3               -- 归约到构造子形式
#print Nat.add              -- 查看定义/定理签名
#synth Semiring Nat         -- 查询类型类实例是否存在

#check @rfl                 -- 多态的自反证明项
