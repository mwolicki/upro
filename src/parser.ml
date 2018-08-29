
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
    | QUESTION
    | LEFT_BRACKET
    | ID of (
# 1 "src/parser.mly"
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
  | MenhirState9
  | MenhirState3

let rec _menhir_goto_rev_relation_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rev_relation_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv73 * (
# 1 "src/parser.mly"
       (string)
# 51 "src/parser.ml"
    ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv50)
    | RIGHT_BRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * (
# 1 "src/parser.mly"
       (string)
# 75 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * (
# 1 "src/parser.mly"
       (string)
# 82 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, (id : (
# 1 "src/parser.mly"
       (string)
# 87 "src/parser.ml"
        ))), _, (args : 'tv_rev_relation_args)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_relation = 
# 31 "src/parser.mly"
                                                                 ( `Relation(id, List.rev args) )
# 94 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65) = _menhir_stack in
        let (_v : 'tv_relation) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * 'tv_relation) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FULLSTOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv59 * 'tv_relation) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv57 * 'tv_relation) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, (r : 'tv_relation)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 24 "src/parser.mly"
                       ( r )
# 116 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv55) = _menhir_stack in
            let (_v : 'tv_expression) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv53 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
            let (_v : 'tv_expression) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv51 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
            let ((head : 'tv_expression) : 'tv_expression) = _v in
            ((let (_menhir_stack, (tail : 'tv_rev_expressions)) = _menhir_stack in
            let _v : 'tv_rev_expressions = 
# 15 "src/parser.mly"
                                            ( head::tail )
# 131 "src/parser.ml"
             in
            _menhir_goto_rev_expressions _menhir_env _menhir_stack _v) : 'freshtv52)) : 'freshtv54)) : 'freshtv56)) : 'freshtv58)) : 'freshtv60)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv61 * 'tv_relation) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv62)) : 'freshtv64)) : 'freshtv66)) : 'freshtv68)) : 'freshtv70)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * (
# 1 "src/parser.mly"
       (string)
# 147 "src/parser.ml"
        ))) * _menhir_state * 'tv_rev_relation_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)

and _menhir_goto_single_arg : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_single_arg -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_single_arg) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_single_arg) : 'tv_single_arg) = _v in
        ((let _v : 'tv_rev_relation_args = 
# 28 "src/parser.mly"
                 ( [ v ] )
# 167 "src/parser.ml"
         in
        _menhir_goto_rev_relation_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_single_arg) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((arg : 'tv_single_arg) : 'tv_single_arg) = _v in
        ((let (_menhir_stack, _menhir_s, (args : 'tv_rev_relation_args)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_rev_relation_args = 
# 27 "src/parser.mly"
                                                  ( arg::args )
# 184 "src/parser.ml"
         in
        _menhir_goto_rev_relation_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_rev_relation_args)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * (
# 1 "src/parser.mly"
       (string)
# 201 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "src/parser.mly"
       (string)
# 208 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 2 "src/parser.mly"
       (string)
# 218 "src/parser.ml"
    )) : (
# 2 "src/parser.mly"
       (string)
# 222 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_single_arg = 
# 20 "src/parser.mly"
             ( `Var v )
# 227 "src/parser.ml"
     in
    _menhir_goto_single_arg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 1 "src/parser.mly"
       (string)
# 234 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((v : (
# 1 "src/parser.mly"
       (string)
# 244 "src/parser.ml"
    )) : (
# 1 "src/parser.mly"
       (string)
# 248 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_single_arg = 
# 19 "src/parser.mly"
         ( `Atom v )
# 253 "src/parser.ml"
     in
    _menhir_goto_single_arg _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)

and _menhir_goto_rev_expressions : _menhir_env -> 'ttv_tail -> 'tv_rev_expressions -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_v : (
# 1 "src/parser.mly"
       (string)
# 271 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv5 * (
# 1 "src/parser.mly"
       (string)
# 282 "src/parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv7 * (
# 1 "src/parser.mly"
       (string)
# 302 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv8)) : 'freshtv10)
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, (l : 'tv_rev_expressions)) = _menhir_stack in
        let _v : 'tv_expressions = 
# 11 "src/parser.mly"
                      ( List.rev l )
# 312 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = _menhir_stack in
        let (_v : 'tv_expressions) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * 'tv_expressions) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv19 * 'tv_expressions) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17 * 'tv_expressions) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, (_1 : 'tv_expressions)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 4 "src/parser.mly"
       (Ast.ast)
# 333 "src/parser.ml"
            ) = 
# 8 "src/parser.mly"
                    ( _1 )
# 337 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv15) = _menhir_stack in
            let (_v : (
# 4 "src/parser.mly"
       (Ast.ast)
# 344 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
            let (_v : (
# 4 "src/parser.mly"
       (Ast.ast)
# 351 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
            let ((_1 : (
# 4 "src/parser.mly"
       (Ast.ast)
# 358 "src/parser.ml"
            )) : (
# 4 "src/parser.mly"
       (Ast.ast)
# 362 "src/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv12)) : 'freshtv14)) : 'freshtv16)) : 'freshtv18)) : 'freshtv20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21 * 'tv_expressions) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv22)) : 'freshtv24)) : 'freshtv26)) : 'freshtv28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * 'tv_rev_expressions) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv30)) : 'freshtv32)

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
       (Ast.ast)
# 393 "src/parser.ml"
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
# 415 "src/parser.ml"
     in
    _menhir_goto_rev_expressions _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 233 "/Users/kevin/.opam/system/lib/menhir/standard.mly"
  

# 422 "src/parser.ml"
