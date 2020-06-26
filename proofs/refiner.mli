(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** Legacy proof engine. Do not use in newly written code. *)

open Evd
open EConstr

(** The refiner (handles primitive rules and high-level tactics). *)
type tactic = Proofview.V82.tac

val sig_it  : 'a sigma -> 'a
val project : 'a sigma -> evar_map

val pf_env  : Goal.goal sigma -> Environ.env
val pf_hyps : Goal.goal sigma -> named_context

val refiner : check:bool -> Constr.t -> unit Proofview.tactic

(** A special exception for levels for the Fail tactic *)
exception FailError of int * Pp.t Lazy.t

(** Takes an exception and either raise it at the next
   level or do nothing. *)
val catch_failerror  : Exninfo.iexn -> unit
