# Fol-archived

A New Coq Formalisation of Classical First-Order Logic with Proofs of the Soundness and Completeness Theorems.

### Contents

1. How to build

2. Overview of files

3. References

## 1. How to build

1. Install [opam](https://opam.ocaml.org/doc/Install.html).

2. Open this repository in your terminal.

3. Type the following script in the terminal:

```
opam switch create . ocaml.5.1.1
eval $(opam env)
opam pin add coq 8.18.0 -y
coq_makefile -f _CoqProject -o Makefile
make -j4 -k
```

### The expected output

```
@HilbertCalculus_sound
     : forall (L : language) (Gamma : ensemble (frm L)) (C : frm L),
       Gamma ⊢ C -> Gamma ⊨ C
Axioms:
classic : forall P : Prop, P \/ ~ P
@HilbertCalculus_complete
     : forall L : language,
       isCountable (function_symbols L) ->
       isCountable (constant_symbols L) ->
       isCountable (relation_symbols L) ->
       forall (X : ensemble (frm L)) (b : frm L), X ⊨ b -> X ⊢ b
Axioms:
classic : forall P : Prop, P \/ ~ P
```

## 2. Overview of files

### Data

- [`Vector.v`](theories/Data/Vector.v) replaces `Coq.Vectors.Vector`.

### Index

- [`Index.v`](theories/Index/Index.v) accumulates all source code and checks for consistency.

### Logic

- [`BasicFol.v`](theories/Logic/BasicFol.v) contains basic definitions of first-order logic.

- [`BasicFol2.v`](theories/Logic/BasicFol2.v) contains extra definitions of first-order logic.

- [`ClassicalFol.v`](theories/Logic/ClassicalFol.v) formalises the meta-theory on first-order logic, using the axiom `classic : forall P : Prop, P \/ ~ P`.

- [`HilbertFol.v`](theories/Logic/HilbertFol.v) contains basic facts about a Hilbert calculus for first-order logic.

- [`HilbertFol2.v`](theories/Logic/HilbertFol2.v) contains advanced facts about the Hilbert calculus for first-order logic.

### Math

- [`BooleanAlgebra.v`](theories/Math/BooleanAlgebra.v) formalises a basic theory on Boolean algebras.

- [`ThN.v`](theories/Math/ThN.v) contains basic facts about the natural numbers.

### Prelude

- [`ClassicalFacts.v`](theories/Prelude/ClassicalFacts.v) contains facts about `CIC + (classic : forall P : Prop, P \/ ~ P)`.

- [`ConstructiveFacts.v`](theories/Prelude/ConstructiveFacts.v) contains facts about `CIC`.

- [`Notations.v`](theories/Prelude/Notations.v) reserves all notations to avoid the conflict.

- [`SfLib.v`](theories/Prelude/SfLib.v) is a copy of `snu-sf/sflib.v`.

- [`Prelude.v`](theories/Prelude/Prelude.v) is the prelude of this repository.

## 3. References

1. [sflib](https://github.com/snu-sf/sflib)

2. [stdpp](https://plv.mpi-sws.org/coqdoc/stdpp)

3. [Constructive Completeness Proofs and Delimited Control](https://theses.hal.science/pastel-00530424/)

4. [CoqGym/goedel](https://github.com/princeton-vl/CoqGym/tree/master/coq_projects/goedel)

5. [formalmetatheory-stoughton](https://github.com/ernius/formalmetatheory-stoughton)

6. [Constructive Analysis of First-Order Completeness](https://github.com/uds-psl/fol-completeness-theorems/tree/master)
