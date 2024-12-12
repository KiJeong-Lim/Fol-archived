Require Import Fol.Prelude.Prelude.
Require Import Fol.Data.Vector.
Require Import Fol.Math.ThN.
Require Import Fol.Logic.BasicFol.
Require Import Fol.Logic.HilbertFol.
Require Import Fol.Logic.ClassicalFol.

Definition CZF_sig : language :=
  {|
    function_symbols := Fin.t 0;
    constant_symbols := Fin.t 0;
    relation_symbols := Fin.t 1;
    function_arity_table := Fin.case0;
    relation_arity_table := fun _ => 2;
  |}.

Inductive Tree : Type :=
  | MkTree (Idx : Type) (subtrees : Idx -> Tree) : Tree.
