(* ================================================================= *)
(* CBC Software Engineering - Rocq Practice File                     *)
(* ================================================================= *)

Require Import Arith.
Require Import Nat.

(* ================================================================= *)
(* Section 1: The Main Exam Question                                 *)
(* ================================================================= *)

(* We define divides using the boolean equality operator (=?) *)
Definition divides (m n : nat) : bool :=
  (n mod m) =? 0.

(* Here is the lemma from the mock exam. 
   Hint: To convert between boolean equality (=?) and propositional 
   equality (=), you will need to use the standard library lemma:
   Nat.eqb_eq : forall n m : nat, (n =? m) = true <-> n = m *)
   
Lemma is_even : forall n, divides 2 n = true <-> n mod 2 = 0.
Proof.
  intros n.
  destruct (divides 2 n) eqn:Heq.
  - (* Goal 1: The 'true' case *)
    split.
    + (*forward*)
      intros _.
      unfold divides in Heq.
      apply Nat.eqb_eq in Heq.
      apply Heq.
    + (*backward*)
      intros _.
      reflexivity.
  - (* Goal 2: The 'false' case *)
    split.
    + (*forward*)
      intros H.
      discriminate H.
    + (*backward*)
      intros H.
      unfold divides in Heq.
      rewrite H in Heq.
      simpl in Heq.
      discriminate Heq.

Qed. (* Replace Admitted with Qed when you are done! *)


(* ================================================================= *)
(* Section 2: Constructor Equalities (injection & discriminate)      *)
(* ================================================================= *)

(* Practice using the 'injection' tactic *)
Lemma succ_inj_practice : forall n m : nat, S n = S m -> n = m.
Proof.
  intros n m H.
  injection H as Heq.
  apply Heq.

Qed.

(* Practice using the 'discriminate' tactic to solve impossibilities *)
Lemma zero_not_succ : forall n : nat, 0 = S n -> False.
Proof.
  intros n H.
  discriminate H.
  
Qed.


(* ================================================================= *)
(* Section 3: Logical Connectives (Props)                            *)
(* ================================================================= *)

(* Practice manipulating logical OR (\/) using destruct, left, and right *)
Lemma or_commutativity : forall P Q : Prop, P \/ Q -> Q \/ P.
Proof.
  intros P Q H.
  destruct H as [HP | HQ].
  - right.
    apply HP.
  - left.
    apply HQ.
  
Qed.

(* Practice manipulating logical AND (/\) using destruct and split *)
Lemma and_commutativity : forall P Q : Prop, P /\ Q -> Q /\ P.
Proof.
  intros P Q H.
  destruct H.
  split.
  - apply H0.
  - apply H.

Qed.
