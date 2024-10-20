Require Import Fol.Data.Vector.
Require Import Fol.Logic.BasicFol.
Require Import Fol.Logic.BasicFol2.
Require Import Fol.Logic.ClassicalFol.
Require Import Fol.Logic.HilbertFol.
Require Import Fol.Logic.HilbertFol2.
Require Import Fol.Math.BooleanAlgebra.
Require Import Fol.Math.ThN.
Require Import Fol.Prelude.ClassicalFacts.
Require Import Fol.Prelude.ConstructiveFacts.
Require Import Fol.Prelude.Notations.
Require Import Fol.Prelude.Prelude.
Require Import Fol.Prelude.SfLib.

Import FolNotations.
Import FolHilbert.

Check @HilbertCalculus_sound.
Print Assumptions HilbertCalculus_sound.

Check @HilbertCalculus_complete.
Print Assumptions HilbertCalculus_complete.
