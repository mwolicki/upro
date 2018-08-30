
(* The type of tokens. *)

type token = 
  | STRING of (string)
  | RULE
  | RIGHT_BRACKET
  | QUESTION
  | LEFT_BRACKET
  | ID of (string)
  | FULLSTOP
  | EOF
  | COMMA

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val parse: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.question)
