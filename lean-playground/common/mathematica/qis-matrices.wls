#!/usr/bin/env wolframscript
(* ::Package:: *)
(* qis-matrices.wls — shared QIS linear-algebra experiments.

   Part of the common Mathematica layer of lean-playground.
   Run:  wolframscript qis-matrices.wls
   Outputs LaTeX fragments into ./build/ for inclusion in the paper.

   Convention: every numeric result produced here must be cross-checked
   against an exact Lean/Mathlib statement before being cited in writing.
*)

outDir = FileNameJoin[{DirectoryName[$InputFileName], "build"}];
CreateDirectory[outDir, CreateIntermediateDirectories -> True];

(* Pauli matrices *)
pauliX = {{0, 1}, {1, 0}};
pauliZ = {{1, 0}, {0, -1}};
hadamard = 1/Sqrt[2] {{1, 1}, {1, -1}};

(* Bell state |Phi+> = (|00> + |11>)/Sqrt[2] *)
bellPhiPlus = 1/Sqrt[2] {1, 0, 0, 1};
bellDensity = KroneckerProduct[{bellPhiPlus}, {Conjugate[bellPhiPlus]}][[1]];

Print["Eigenvalues of X: ", Eigenvalues[pauliX]];
Print["H . X . H = ", FullSimplify[hadamard . pauliX . hadamard]];
Print["Trace of Bell density matrix: ", FullSimplify[Tr[bellDensity]]];

save[name_, expr_] := Export[
  FileNameJoin[{outDir, name}],
  ToString[TeXForm[expr], CharacterEncoding -> "ASCII"], "Text"];

save["pauliX-eigenvalues.tex", Eigenvalues[pauliX]];
save["bell-trace.tex", FullSimplify[Tr[bellDensity]]];
save["HXH.tex", FullSimplify[hadamard . pauliX . hadamard]];

Print["Wrote LaTeX fragments to ", outDir];
