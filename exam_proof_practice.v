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
    
  - (* Goal 2: The 'false' case *)
    
Admitted. (* Replace Admitted with Qed when you are done! *)


(* ================================================================= *)
(* Section 2: Constructor Equalities (injection & discriminate)      *)
(* ================================================================= *)

(* Practice using the 'injection' tactic *)
Lemma succ_inj_practice : forall n m : nat, S n = S m -> n = m.
Proof.
  
Admitted.

(* Practice using the 'discriminate' tactic to solve impossibilities *)
Lemma zero_not_succ : forall n : nat, 0 = S n -> False.
Proof.
  
Admitted.


(* ================================================================= *)
(* Section 3: Logical Connectives (Props)                            *)
(* ================================================================= *)

(* Practice manipulating logical OR (\/) using destruct, left, and right *)
Lemma or_commutativity : forall P Q : Prop, P \/ Q -> Q \/ P.
Proof.
  
Admitted.

(* Practice manipulating logical AND (/\) using destruct and split *)
Lemma and_commutativity : forall P Q : Prop, P /\ Q -> Q /\ P.
Proof.

Admitted.
