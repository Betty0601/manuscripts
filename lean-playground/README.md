# lean-playground

一个 lake 工程、一套 Mathlib/Lean/LaTeX/Wolfram 共享底座，下面按主题分设多个小项目。
本地仓库 ⇄ GitHub `Betty0601/manuscripts` ⇄ Overleaf 三端同步（Overleaf 侧 Menu → GitHub → Pull 可见本文件夹）。

## 目录地图

| 小项目 | 内容 |
| --- | --- |
| [`01-qis-training/`](01-qis-training/) | **QIS 书本分阶段训练路径合集**：`formal-math/`（形式化数学验证）、`numeric-circuit/`（数值与电路验证）——具体内容待提供，当前为占位骨架 |
| [`02-foundations/`](02-foundations/) | 基础笔记：数与求值、定义/归纳类型/结构、类型类、探索命令 |
| [`03-proofs/`](03-proofs/) | 证明与推导：rw/simp/ring/omega/norm_num、命题逻辑、归纳法、exact? 搜索；配纸面推导 |
| [`04-features/`](04-features/) | Lean 其他功能：宏、自定义 tactic（elab/TacticM）、函数式与 IO 编程 |
| [`05-pqc-crypto/`](05-pqc-crypto/) | PQC：ZMod p 有限域、Fermat 小定理、ML-KEM 多项式环、计数界 |
| [`common/`](common/) | 共享层：LaTeX 样式与数学宏、Lean 共享 tactic（`LeanPlayground.Common`）、Wolfram 脚本 |
| [`paper/`](paper/) | LaTeX 双模式：`playground.tex`（独立编译）与 `appendix.tex`（并入主论文 main.tex） |

## 构建（本机）

前置：[elan](https://lean-lang.org/install/manual) 已安装。

```bash
cd lean-playground
lake exe cache get     # 首次：拉取 Mathlib 预编译 olean（避免数小时源码编译）
lake build             # 构建全部子项目（也可 lake build Foundations Proofs ...）
```

工具链版本由 `lean-toolchain` 锁定，elan 会自动获取匹配版本。

## LaTeX

- 独立版：Overleaf 中将 `lean-playground/paper/playground.tex` 设为 Main document，pdfLaTeX 编译。
- 并入主论文：仓库根 `main.tex` 已 `\input{lean-playground/paper/appendix}`。
- Lean 代码用 `common/latex/lean-style.tex` 的 `listings` 样式（pdfLaTeX 兼容，示例保持 ASCII）。
- Wolfram 代码用 `common/latex/wolfram-style.tex`。

## Wolfram / Mathematica

Wolfram Engine 15 已装于 `/Applications/Wolfram Engine.app`，CLI 为 `wolframscript`。
首次使用需 Wolfram ID 激活一次，见 [`common/mathematica/README.md`](common/mathematica/README.md)。
