# common — 所有子项目共享层

| 目录 | 共享内容 |
| --- | --- |
| [`latex/`](latex/) | `lean-style.tex`（Lean 4 的 listings 样式）、`wolfram-style.tex`（Wolfram 样式）、`math-macros.tex`（统一数学宏，`\lg` 前缀防冲突） |
| [`lean/LeanPlayground/Common/`](lean/LeanPlayground/Common/) | 共享 Lean 工具：`Basic.lean`（定义与引理）、`Tactics.lean`（自定义 tactic/宏），模块名 `LeanPlayground.Common.*` |
| [`mathematica/`](mathematica/) | 共享 Wolfram Language（Mathematica/Wolfram Engine 15）脚本与 `.wls`→`.tex` 导出器 |

设计原则：一个 lake 包、一份 Mathlib、一套工具链；子项目只放自己的源码与页面，
共性能力一律下沉到本目录。
