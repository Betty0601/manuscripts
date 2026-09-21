# 01-qis-training — QIS 书本分阶段训练路径合集

本文件夹是 `lean-playground` 的**第一个小项目**，对应 Nielsen & Chuang
*Quantum Computation and Quantum Information* 的分阶段训练，并服务于
ML-KEM/ML-DSA QROM 安全归约所需的能力建设。

## 两条支线

| 子文件夹 | 支线 | 形态 |
| --- | --- | --- |
| [`formal-math/`](formal-math/) | 形式化数学验证 | Lean/Mathlib 定义、定理、证明（模块 `FormalMath`） |
| [`numeric-circuit/`](numeric-circuit/) | 数值与电路验证 | 数值实验（Wolfram）+ Lean 精确陈述交叉校验（模块 `NumericCircuit`） |

> 内容待提供：两条支线的**具体分阶段内容稍后由用户给出**，当前仅建立目录、
> 空模块与构建接线；填入新 `.lean` 文件后会自动纳入 `lake build`。

## 构建

```bash
lake build QISFormalMath QISNumericCircuit
```
