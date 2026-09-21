# Mathematica / Wolfram 共享层

本目录是 `lean-playground` 所有子项目共用的 Wolfram Language（Mathematica 内核）脚本层。

## 已安装的组件（2026-09-21）

- `Wolfram Engine 15`（社区版，命令行计算内核，无 Notebook 界面）→ `/Applications/Wolfram Engine.app`
- `WolframScript.app` → `/Applications/WolframScript.app`
- 命令行入口：`~/.local/bin/wolframscript`（符号链接，已在用户可写目录）

## 首次激活（需要人工操作一次）

Wolfram Engine 社区版免费，但首次运行必须用 Wolfram ID 登录激活：

```bash
~/.local/bin/wolframscript -code '1+1'
```

按提示在弹出的浏览器页面用 Wolfram ID（没有就免费注册）授权即可。激活后离线可用。

## 共享脚本

| 脚本 | 用途 |
| --- | --- |
| `qis-matrices.wls` | QIS 线性代数：Pauli 矩阵、Hadamard、Bell 态密度矩阵、本征值，并把结果以 `TeXForm` 写入 `build/*.tex` |
| `export-tex.wls` | 通用导出器：`wolframscript export-tex.wls "<表达式>" 名称.tex` |

输出目录 `build/` 已被 git 忽略（数值产物不入库，随时可重新生成）。

## 与 Lean / LaTeX 的协作约定

1. Wolfram 负责**数值/符号实验**（本征值、化简、积分、电路仿真）。
2. Lean/Mathlib 负责**精确陈述与机器核验**。
3. 写进论文的每个数值结果都要能对应到一条已通过的 Lean 命题；LaTeX 用 `\input{common/mathematica/build/xxx.tex}` 引用导出片段。
4. Wolfram 代码排版使用共享样式 `common/latex/wolfram-style.tex`（`style=wlstyle`）。
