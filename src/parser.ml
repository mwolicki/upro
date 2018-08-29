
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | STRING of (
# 2 "src/parser.mly"
       (string)
# 11 "src/parser.ml"
  )
    | RULE
    | RIGHT_BRACKET
    | LEFT_BRACKET
    | ID of (
# 1 "src/parser.mly"
       (string)
# 19 "src/parser.ml"
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
  | MenhirState16
  | MenhirState13
  | MenhirState9
  | MenhirState3
  | MenhirState1

let rec _menhir_goto_rev_facts : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rev_facts -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv78)
    | FULLSTOP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lhs : 'tv_fact)), _, (rhs : 'tv_rev_facts)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expression = 
# 25 "src/parser.mly"
                                              ( `Relation(lhs, List.rev rhs) )
# 78 "src/parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * 'tv_fact)) * _menhir_state * 'tv_rev_facts) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv75 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_expression) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv73 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((head : 'tv_expression) : 'tv_expression) = _v in
    ((let (_menhir_stack, (tail : 'tv_rev_expressions)) = _menhir_stack in
    let _v : 'tv_rev_expressions = 
# 11 "src/parser.mly"
                                            ( head::tail )
# 103 "src/parser.ml"
     in
    _menhir_goto_rev_expressions _menhir_env _menhir_stack _v) : 'freshtv74)) : 'freshtv76)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_rev_relation_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rev_relation_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv71 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 119 "src/parser.ml"
    ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | STRING _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv44)
    | RIGHT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 143 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 150 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : (
# 1 "src/parser.mly"
       (string)
# 155 "src/parser.ml"
        ))), _, (args : 'tv_rev_relation_args)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_fact = 
# 17 "src/parser.mly"
                                                                     ( `Fact(id, List.rev args) )
# 162 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_fact) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState1 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv53 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FULLSTOP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_fact)) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_expression = 
# 24 "src/parser.mly"
                 ( _1 )
# 187 "src/parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)
            | RULE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv49 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv50)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv51 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
        | MenhirState16 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * _menhir_state * 'tv_rev_facts)) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv55 * _menhir_state * 'tv_rev_facts)) * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (tail : 'tv_rev_facts)), _, (head : 'tv_fact)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_rev_facts = 
# 20 "src/parser.mly"
                                 ( head::tail )
# 219 "src/parser.ml"
             in
            _menhir_goto_rev_facts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv56)) : 'freshtv58)
        | MenhirState13 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_fact) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (f : 'tv_fact)) = _menhir_stack in
            let _v : 'tv_rev_facts = 
# 21 "src/parser.mly"
         ( [f] )
# 231 "src/parser.ml"
             in
            _menhir_goto_rev_facts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv60)) : 'freshtv62)
        | _ ->
            _menhir_fail ()) : 'freshtv64)) : 'freshtv66)) : 'freshtv68)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 243 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)) : 'freshtv72)

and _menhir_goto_single_arg : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_single_arg -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_single_arg) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_single_arg) : 'tv_single_arg) = _v in
        ((let _v : 'tv_rev_relation_args = 
# 30 "src/parser.mly"
                 ( [ v ] )
# 263 "src/parser.ml"
         in
        _menhir_goto_rev_relation_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)) : 'freshtv38)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_single_arg) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((arg : 'tv_single_arg) : 'tv_single_arg) = _v in
        ((let (_menhir_stack, _menhir_s, (args : 'tv_rev_relation_args)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_rev_relation_args = 
# 29 "src/parser.mly"
                                                  ( arg::args )
# 280 "src/parser.ml"
         in
        _menhir_goto_rev_relation_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "src/parser.mly"
       (string)
# 289 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 2 "src/parser.mly"
       (string)
# 299 "src/parser.ml"
    )) : (
# 2 "src/parser.mly"
       (string)
# 303 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_single_arg = 
# 15 "src/parser.mly"
             ( `Var v )
# 308 "src/parser.ml"
     in
    _menhir_goto_single_arg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 1 "src/parser.mly"
       (string)
# 315 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 1 "src/parser.mly"
       (string)
# 325 "src/parser.ml"
    )) : (
# 1 "src/parser.mly"
       (string)
# 329 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_single_arg = 
# 14 "src/parser.mly"
         ( `Atom v )
# 334 "src/parser.ml"
     in
    _menhir_goto_single_arg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_rev_facts)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_fact)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 361 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv30)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 1 "src/parser.mly"
       (string)
# 373 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 385 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | STRING _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 1 "src/parser.mly"
       (string)
# 405 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_goto_rev_expressions : _menhir_env -> 'ttv_tail -> 'tv_rev_expressions -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState1 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, (_1 : 'tv_rev_expressions)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 4 "src/parser.mly"
       (_)
# 430 "src/parser.ml"
        ) = 
# 7 "src/parser.mly"
                             ( List.rev _1 )
# 434 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = _menhir_stack in
        let (_v : (
# 4 "src/parser.mly"
       (_)
# 441 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_v : (
# 4 "src/parser.mly"
       (_)
# 448 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let ((_1 : (
# 4 "src/parser.mly"
       (_)
# 455 "src/parser.ml"
        )) : (
# 4 "src/parser.mly"
       (_)
# 459 "src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)
    | ID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv16)

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
# 4 "src/parser.mly"
       (_)
# 484 "src/parser.ml"
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
# 10 "src/parser.mly"
  ( [] )
# 506 "src/parser.ml"
     in
    _menhir_goto_rev_expressions _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 233 "/Users/kevin/.opam/system/lib/menhir/standard.mly"
  

# 513 "src/parser.ml"
