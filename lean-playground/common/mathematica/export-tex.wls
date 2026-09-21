#!/usr/bin/env wolframscript
(* ::Package:: *)
(* export-tex.wls — generic Mathematica -> LaTeX fragment exporter.

   Usage:
     wolframscript export-tex.wls "InputForm expression" output.tex

   Example:
     wolframscript export-tex.wls "Integrate[x^2, {x,0,1}]" integral.tex

   The expression is evaluated symbolically and the result is written with
   TeXForm, so numerical/circuit experiments can be quoted verbatim in the
   LaTeX writeup. Every exported fragment lives under build/ (gitignored).
*)

outDir = FileNameJoin[{DirectoryName[$InputFileName], "build"}];
CreateDirectory[outDir, CreateIntermediateDirectories -> True];

If[Length[$ScriptCommandLine] < 3,
  Print["usage: wolframscript export-tex.wls \"<expression>\" <output.tex>"];
  Quit[1]];

expr = ToExpression[$ScriptCommandLine[[2]]];
name = $ScriptCommandLine[[3]];
result = FullSimplify[expr];
Export[FileNameJoin[{outDir, name}],
  ToString[TeXForm[result], CharacterEncoding -> "ASCII"], "Text"];
Print[name, " = ", result];
