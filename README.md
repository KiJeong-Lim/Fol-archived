# Fol

A New Coq Formalisation of Classical First-Order Logic with Proofs of the Soundness and Completeness Theorems

### Contents

1. How to build

2. Overview of Files

3. References

## 1. How to build

1. Install [opam](https://opam.ocaml.org/doc/Install.html).

2. Open this folder in your terminal.

3. Type the following script in the terminal:

```
opam switch create . ocaml.5.1.1
eval $(opam env)
opam pin add coq 8.18.0 -y
coq_makefile -f _CoqProject -o Makefile
make -j4 -k
```

### An expected output

```
@HilbertCalculus_sound
     : forall (L : language) (Gamma : ensemble (frm L)) (C : frm L),
       Gamma ⊢ C -> Gamma ⊨ C
Axioms:
classic : forall P : Prop, P \/ ~ P
@HilbertCalculus_complete
     : forall L : language,
       isEnumerable (function_symbols L) ->
       isEnumerable (constant_symbols L) ->
       isEnumerable (relation_symbols L) ->
       forall (X : ensemble (frm L)) (b : frm L), X ⊨ b -> X ⊢ b
Axioms:
classic : forall P : Prop, P \/ ~ P
```

## 2. Overview of Files

### Data

- `Vector.v` : Replaces `Coq.Vectors.VectorDef.t`.

### Logic

- `BasicFol.v` : Basic definitions of First-Order Logic

- `BasicFol2.v` : Extra definitions of First-Order Logic

- `ClassicalFol.v` : Meta-theories on Classical First-Order Logic.

- `HilbertFol.v` : Basic facts on Hilbert calculus for First-Order Logic.

- `HilbertFol2.v` : Advanced facts on Hilbert calculus for First-Order Logic.

### Index

- `Index.v` : Accumulates all source files and check their consistency.

### Math

- `BooleanAlgebra.v` : Basic theory on Boolean Algebras.

- `ThN.v` : Basic facts on the natural numbers.

### Prelude

- `Classical.v` : Facts on `CIC + (classic : forall P : Prop, P \/ ~ P)`.

- `ConstructiveFacts.v` : Facts on `CIC`.

- `Notations.v` : Reserves all notations to avoid the conflict.

- `SfLib.v` : The copy of `snu-sf/sflib.v`.

- `Prelude.v` : The prelude.

## 3. References

1. [sflib](https://github.com/snu-sf/sflib)

2. [stdpp](https://plv.mpi-sws.org/coqdoc/stdpp)

3. [Constructive Completeness Proofs and Delimited Control](https://theses.hal.science/pastel-00530424/)

4. [CoqGym/goedel](https://github.com/princeton-vl/CoqGym/tree/master/coq_projects/goedel)

5. [formalmetatheory-stoughton](https://github.com/ernius/formalmetatheory-stoughton)

6. [Constructive Analysis of First-Order Completeness](https://github.com/uds-psl/fol-completeness-theorems/tree/master)
