
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | STRING of (
# 6 "src/parser.mly"
       (string)
# 11 "src/parser.ml"
  )
    | RULE
    | RIGHT_BRACKET
    | QUESTION
    | LEFT_BRACKET
    | ID of (
# 5 "src/parser.mly"
       (string)
# 20 "src/parser.ml"
  )
    | FULLSTOP
    | EOF
    | COMMA
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState19
  | MenhirState16
  | MenhirState10
  | MenhirState4
  | MenhirState2
  | MenhirState1

# 1 "src/parser.mly"
  
open Ast

# 52 "src/parser.ml"

let rec _menhir_goto_rev_facts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rev_facts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv97 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv90)
    | FULLSTOP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lhs : 'tv_fact)), _, (rhs : 'tv_rev_facts)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expression = 
# 29 "src/parser.mly"
                                              ( Relation(lhs, List.rev rhs) )
# 86 "src/parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv87 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_expression) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv85 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((head : 'tv_expression) : 'tv_expression) = _v in
    ((let (_menhir_stack, (tail : 'tv_rev_expressions)) = _menhir_stack in
    let _v : 'tv_rev_expressions = 
# 15 "src/parser.mly"
                                            ( head::tail )
# 111 "src/parser.ml"
     in
    _menhir_goto_rev_expressions _menhir_env _menhir_stack _v) : 'freshtv86)) : 'freshtv88)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_rev_relation_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rev_relation_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv83 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 127 "src/parser.ml"
    ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | STRING _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv38)
    | RIGHT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 151 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 158 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : (
# 5 "src/parser.mly"
       (string)
# 163 "src/parser.ml"
        ))), _, (args : 'tv_rev_relation_args)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_fact = 
# 21 "src/parser.mly"
                                                                     ( { name = id; values = List.rev args } )
# 170 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fact) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState2 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv55 * 'tv_rev_expressions) * _menhir_state) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FULLSTOP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv51 * 'tv_rev_expressions) * _menhir_state) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EOF ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv47 * 'tv_rev_expressions) * _menhir_state) * _menhir_state * 'tv_fact)) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv45 * 'tv_rev_expressions) * _menhir_state) * _menhir_state * 'tv_fact)) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, (es : 'tv_rev_expressions)), _), _, (q : 'tv_fact)) = _menhir_stack in
                    let _5 = () in
                    let _4 = () in
                    let _2 = () in
                    let _v : (
# 8 "src/parser.mly"
       (Ast.question)
# 202 "src/parser.ml"
                    ) = 
# 11 "src/parser.mly"
                                                               ( Q(q, List.rev es) )
# 206 "src/parser.ml"
                     in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv43) = _menhir_stack in
                    let (_v : (
# 8 "src/parser.mly"
       (Ast.question)
# 213 "src/parser.ml"
                    )) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
                    let (_v : (
# 8 "src/parser.mly"
       (Ast.question)
# 220 "src/parser.ml"
                    )) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
                    let ((_1 : (
# 8 "src/parser.mly"
       (Ast.question)
# 227 "src/parser.ml"
                    )) : (
# 8 "src/parser.mly"
       (Ast.question)
# 231 "src/parser.ml"
                    )) = _v in
                    (Obj.magic _1 : 'freshtv40)) : 'freshtv42)) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv49 * 'tv_rev_expressions) * _menhir_state) * _menhir_state * 'tv_fact)) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv53 * 'tv_rev_expressions) * _menhir_state) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
        | MenhirState1 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FULLSTOP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv57 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_fact)) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_expression = 
# 28 "src/parser.mly"
                 ( Rule(_1) )
# 265 "src/parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)) : 'freshtv60)
            | RULE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv62)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)
        | MenhirState19 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv69 * _menhir_state * 'tv_rev_facts)) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv67 * _menhir_state * 'tv_rev_facts)) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (tail : 'tv_rev_facts)), _, (head : 'tv_fact)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_rev_facts = 
# 24 "src/parser.mly"
                                 ( head::tail )
# 297 "src/parser.ml"
             in
            _menhir_goto_rev_facts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv68)) : 'freshtv70)
        | MenhirState16 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (f : 'tv_fact)) = _menhir_stack in
            let _v : 'tv_rev_facts = 
# 25 "src/parser.mly"
         ( [f] )
# 309 "src/parser.ml"
             in
            _menhir_goto_rev_facts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)) : 'freshtv74)
        | _ ->
            _menhir_fail ()) : 'freshtv76)) : 'freshtv78)) : 'freshtv80)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 321 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)

and _menhir_goto_single_arg : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_single_arg -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_single_arg) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_single_arg) : 'tv_single_arg) = _v in
        ((let _v : 'tv_rev_relation_args = 
# 33 "src/parser.mly"
                 ( [ v ] )
# 341 "src/parser.ml"
         in
        _menhir_goto_rev_relation_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)) : 'freshtv32)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_single_arg) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((arg : 'tv_single_arg) : 'tv_single_arg) = _v in
        ((let (_menhir_stack, _menhir_s, (args : 'tv_rev_relation_args)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_rev_relation_args = 
# 32 "src/parser.mly"
                                                  ( arg::args )
# 358 "src/parser.ml"
         in
        _menhir_goto_rev_relation_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)) : 'freshtv36)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "src/parser.mly"
       (string)
# 367 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 6 "src/parser.mly"
       (string)
# 377 "src/parser.ml"
    )) : (
# 6 "src/parser.mly"
       (string)
# 381 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_single_arg = 
# 19 "src/parser.mly"
             ( Var v )
# 386 "src/parser.ml"
     in
    _menhir_goto_single_arg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "src/parser.mly"
       (string)
# 393 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 5 "src/parser.mly"
       (string)
# 403 "src/parser.ml"
    )) : (
# 5 "src/parser.mly"
       (string)
# 407 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_single_arg = 
# 18 "src/parser.mly"
         ( Atom v )
# 412 "src/parser.ml"
     in
    _menhir_goto_single_arg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * 'tv_rev_facts)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * 'tv_fact)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 439 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * 'tv_rev_expressions) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv24)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "src/parser.mly"
       (string)
# 456 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 468 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | STRING _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 5 "src/parser.mly"
       (string)
# 488 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_goto_rev_expressions : _menhir_env -> 'ttv_tail -> 'tv_rev_expressions -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | QUESTION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState1 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv8)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and parse : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 8 "src/parser.mly"
       (Ast.question)
# 537 "src/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
    ((let _v : 'tv_rev_expressions = 
# 14 "src/parser.mly"
  ( [] )
# 559 "src/parser.ml"
     in
    _menhir_goto_rev_expressions _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 233 "/Users/kevin/.opam/system/lib/menhir/standard.mly"
  

# 566 "src/parser.ml"
