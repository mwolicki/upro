open Lexer
open Lexing

let print_position lexbuf =
  let pos = lexbuf.lex_curr_p in
  Printf.sprintf "%s:%d:%d" pos.pos_fname
    pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)


let text code = 
    let lexbuf = Lexing.from_string code in
    lexbuf.lex_curr_p <-
        { lexbuf.lex_curr_p with pos_bol = 0;
                            pos_lnum = 0
        };
    try `Ok (Parser.parse Lexer.read lexbuf) with
    | SyntaxError msg ->
        let x = Printf.sprintf "pos %s: %s" (print_position lexbuf) msg in
        `Err x
    
    | Parser.Error ->
        let x = Printf.sprintf "pos %s: parser error" (print_position lexbuf) in
        `Err x
    
    