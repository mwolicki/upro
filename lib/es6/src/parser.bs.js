// Generated by BUCKLESCRIPT VERSION 4.0.5, PLEASE EDIT WITH CARE

import * as List from "bs-platform/lib/es6/list.js";
import * as Block from "bs-platform/lib/es6/block.js";
import * as Curry from "bs-platform/lib/es6/curry.js";
import * as Printf from "bs-platform/lib/es6/printf.js";
import * as Pervasives from "bs-platform/lib/es6/pervasives.js";
import * as Caml_exceptions from "bs-platform/lib/es6/caml_exceptions.js";
import * as Caml_builtin_exceptions from "bs-platform/lib/es6/caml_builtin_exceptions.js";

var $$Error = Caml_exceptions.create("Parser-Uprolog.MenhirBasics.Error");

function _menhir_goto_rev_facts(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          /* tuple */[
            "parser.ml",
            50,
            6
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number" && _tok >= 3) {
    switch (_tok - 3 | 0) {
      case 0 : 
          var _menhir_env$1 = _menhir_discard(_menhir_env);
          var _v_001 = /* tuple */[
            _menhir_stack[2],
            List.rev(_v)
          ];
          var _v$1 = /* `Relation */[
            260469468,
            _v_001
          ];
          return _menhir_goto_expression(_menhir_env$1, _menhir_stack[0], _menhir_stack[1], _v$1);
      case 1 : 
          exit = 1;
          break;
      case 2 : 
          var _menhir_env$2 = _menhir_discard(_menhir_env);
          var _tok$1 = _menhir_env$2[/* _menhir_token */2];
          var exit$1 = 0;
          if (typeof _tok$1 === "number" || _tok$1.tag !== 1) {
            exit$1 = 2;
          } else {
            return _menhir_run2(_menhir_env$2, _menhir_stack$1, /* MenhirState16 */0, _tok$1[0]);
          }
          if (exit$1 === 2) {
            if (_menhir_env$2[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      62,
                      12
                    ]
                  ];
            }
            _menhir_env$2[/* _menhir_error */3] = true;
            return _menhir_errorcase(_menhir_env$2, _menhir_stack$1, /* MenhirState16 */0);
          }
          break;
      
    }
  } else {
    exit = 1;
  }
  if (exit === 1) {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              81,
              8
            ]
          ];
    }
    _menhir_env[/* _menhir_error */3] = true;
    return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
  }
  
}

function _menhir_run2(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _tok = _menhir_env$1[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number" && _tok === 2) {
    var _menhir_env$2 = _menhir_discard(_menhir_env$1);
    var _tok$1 = _menhir_env$2[/* _menhir_token */2];
    if (typeof _tok$1 === "number") {
      if (_menhir_env$2[/* _menhir_error */3]) {
        throw [
              Caml_builtin_exceptions.assert_failure,
              /* tuple */[
                "parser.ml",
                394,
                12
              ]
            ];
      }
      _menhir_env$2[/* _menhir_error */3] = true;
      return _menhir_errorcase(_menhir_env$2, _menhir_stack$1, /* MenhirState3 */3);
    } else if (_tok$1.tag) {
      return _menhir_run5(_menhir_env$2, _menhir_stack$1, /* MenhirState3 */3, _tok$1[0]);
    } else {
      return _menhir_run4(_menhir_env$2, _menhir_stack$1, /* MenhirState3 */3, _tok$1[0]);
    }
  } else {
    exit = 1;
  }
  if (exit === 1) {
    if (_menhir_env$1[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              398,
              8
            ]
          ];
    }
    _menhir_env$1[/* _menhir_error */3] = true;
    return _menhir_errorcase(_menhir_env$1, _menhir_stack, _menhir_s);
  }
  
}

function _menhir_errorcase(_, __menhir_stack, __menhir_s) {
  while(true) {
    var _menhir_s = __menhir_s;
    var _menhir_stack = __menhir_stack;
    if (_menhir_s >= 4) {
      throw $$Error;
    } else {
      __menhir_s = _menhir_stack[1];
      __menhir_stack = _menhir_stack[0];
      continue ;
    }
  };
}

function _menhir_fail() {
  Printf.fprintf(Pervasives.stderr, /* Format */[
        /* String_literal */Block.__(11, [
            "Internal failure -- please contact the parser generator's developers.\n",
            /* Flush */Block.__(10, [/* End_of_format */0])
          ]),
        "Internal failure -- please contact the parser generator's developers.\n%!"
      ]);
  throw [
        Caml_builtin_exceptions.assert_failure,
        /* tuple */[
          "parser.ml",
          109,
          4
        ]
      ];
}

function _menhir_discard(_menhir_env) {
  var lexer = _menhir_env[/* _menhir_lexer */0];
  var lexbuf = _menhir_env[/* _menhir_lexbuf */1];
  var _tok = Curry._1(lexer, lexbuf);
  return /* record */[
          /* _menhir_lexer */lexer,
          /* _menhir_lexbuf */lexbuf,
          /* _menhir_token */_tok,
          /* _menhir_error */false
        ];
}

function _menhir_run5(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _v$1 = /* `Atom */[
    726615281,
    _v
  ];
  return _menhir_goto_single_arg(_menhir_env$1, _menhir_stack, _menhir_s, _v$1);
}

function _menhir_run4(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  var _v$1 = /* `Var */[
    4298439,
    _v
  ];
  return _menhir_goto_single_arg(_menhir_env$1, _menhir_stack, _menhir_s, _v$1);
}

function _menhir_goto_expression(_menhir_env, _menhir_stack, _, _v) {
  var _v_001 = _menhir_stack[1];
  var _v$1 = /* :: */[
    _v,
    _v_001
  ];
  return _menhir_goto_rev_expressions(_menhir_env, _menhir_stack[0], _v$1);
}

function _menhir_goto_single_arg(_menhir_env, _menhir_stack, _menhir_s, _v) {
  if (_menhir_s >= 2) {
    switch (_menhir_s - 2 | 0) {
      case 0 : 
          var _v_001 = _menhir_stack[2];
          var _v$1 = /* :: */[
            _v,
            _v_001
          ];
          return _menhir_goto_rev_relation_args(_menhir_env, _menhir_stack[0], _menhir_stack[1], _v$1);
      case 1 : 
          var _v$2 = /* :: */[
            _v,
            /* [] */0
          ];
          return _menhir_goto_rev_relation_args(_menhir_env, _menhir_stack, _menhir_s, _v$2);
      case 2 : 
          return _menhir_fail(/* () */0);
      
    }
  } else {
    return _menhir_fail(/* () */0);
  }
}

function _menhir_goto_rev_relation_args(_menhir_env, _menhir_stack, _menhir_s, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _menhir_s,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          /* tuple */[
            "parser.ml",
            120,
            6
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number") {
    if (_tok !== 1) {
      if (_tok >= 5) {
        var _menhir_env$1 = _menhir_discard(_menhir_env);
        var _tok$1 = _menhir_env$1[/* _menhir_token */2];
        if (typeof _tok$1 === "number") {
          if (_menhir_env$1[/* _menhir_error */3]) {
            throw [
                  Caml_builtin_exceptions.assert_failure,
                  /* tuple */[
                    "parser.ml",
                    134,
                    12
                  ]
                ];
          }
          _menhir_env$1[/* _menhir_error */3] = true;
          return _menhir_errorcase(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */2);
        } else if (_tok$1.tag) {
          return _menhir_run5(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */2, _tok$1[0]);
        } else {
          return _menhir_run4(_menhir_env$1, _menhir_stack$1, /* MenhirState9 */2, _tok$1[0]);
        }
      } else {
        exit = 1;
      }
    } else {
      var _menhir_env$2 = _menhir_discard(_menhir_env);
      var _menhir_s$1 = _menhir_stack[1];
      var _menhir_stack$2 = _menhir_stack[0];
      var _v_001 = /* tuple */[
        _menhir_stack[2],
        List.rev(_v)
      ];
      var _v$1 = /* `Fact */[
        781115596,
        _v_001
      ];
      var _menhir_stack$3 = /* tuple */[
        _menhir_stack$2,
        _menhir_s$1,
        _v$1
      ];
      switch (_menhir_s$1) {
        case 0 : 
            var _v_001$1 = _menhir_stack$2[2];
            var _v$2 = /* :: */[
              _v$1,
              _v_001$1
            ];
            return _menhir_goto_rev_facts(_menhir_env$2, _menhir_stack$2[0], _menhir_stack$2[1], _v$2);
        case 1 : 
            var _v$3 = /* :: */[
              _v$1,
              /* [] */0
            ];
            return _menhir_goto_rev_facts(_menhir_env$2, _menhir_stack$2, _menhir_s$1, _v$3);
        case 2 : 
        case 3 : 
            return _menhir_fail(/* () */0);
        case 4 : 
            if (_menhir_env$2[/* _menhir_error */3]) {
              throw [
                    Caml_builtin_exceptions.assert_failure,
                    /* tuple */[
                      "parser.ml",
                      172,
                      14
                    ]
                  ];
            }
            var _tok$2 = _menhir_env$2[/* _menhir_token */2];
            var exit$1 = 0;
            if (typeof _tok$2 === "number") {
              if (_tok$2 !== 3) {
                if (_tok$2 !== 0) {
                  exit$1 = 2;
                } else {
                  var _menhir_env$3 = _menhir_discard(_menhir_env$2);
                  var _tok$3 = _menhir_env$3[/* _menhir_token */2];
                  var exit$2 = 0;
                  if (typeof _tok$3 === "number" || _tok$3.tag !== 1) {
                    exit$2 = 3;
                  } else {
                    return _menhir_run2(_menhir_env$3, _menhir_stack$3, /* MenhirState13 */1, _tok$3[0]);
                  }
                  if (exit$2 === 3) {
                    if (_menhir_env$3[/* _menhir_error */3]) {
                      throw [
                            Caml_builtin_exceptions.assert_failure,
                            /* tuple */[
                              "parser.ml",
                              198,
                              20
                            ]
                          ];
                    }
                    _menhir_env$3[/* _menhir_error */3] = true;
                    return _menhir_errorcase(_menhir_env$3, _menhir_stack$3, /* MenhirState13 */1);
                  }
                  
                }
              } else {
                var _menhir_env$4 = _menhir_discard(_menhir_env$2);
                return _menhir_goto_expression(_menhir_env$4, _menhir_stack$2, _menhir_s$1, _v$1);
              }
            } else {
              exit$1 = 2;
            }
            if (exit$1 === 2) {
              if (_menhir_env$2[/* _menhir_error */3]) {
                throw [
                      Caml_builtin_exceptions.assert_failure,
                      /* tuple */[
                        "parser.ml",
                        202,
                        16
                      ]
                    ];
              }
              _menhir_env$2[/* _menhir_error */3] = true;
              return _menhir_errorcase(_menhir_env$2, _menhir_stack$2, _menhir_s$1);
            }
            break;
        
      }
    }
  } else {
    exit = 1;
  }
  if (exit === 1) {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              236,
              8
            ]
          ];
    }
    _menhir_env[/* _menhir_error */3] = true;
    return _menhir_errorcase(_menhir_env, _menhir_stack, _menhir_s);
  }
  
}

function _menhir_goto_rev_expressions(_menhir_env, _menhir_stack, _v) {
  var _menhir_stack$1 = /* tuple */[
    _menhir_stack,
    _v
  ];
  if (_menhir_env[/* _menhir_error */3]) {
    throw [
          Caml_builtin_exceptions.assert_failure,
          /* tuple */[
            "parser.ml",
            414,
            6
          ]
        ];
  }
  var _tok = _menhir_env[/* _menhir_token */2];
  var exit = 0;
  if (typeof _tok === "number") {
    if (_tok === 4) {
      return List.rev(_v);
    } else {
      exit = 1;
    }
  } else if (_tok.tag === 1) {
    return _menhir_run2(_menhir_env, _menhir_stack$1, /* MenhirState1 */4, _tok[0]);
  } else {
    exit = 1;
  }
  if (exit === 1) {
    if (_menhir_env[/* _menhir_error */3]) {
      throw [
            Caml_builtin_exceptions.assert_failure,
            /* tuple */[
              "parser.ml",
              464,
              8
            ]
          ];
    }
    _menhir_env[/* _menhir_error */3] = true;
    return _menhir_errorcase(_menhir_env, _menhir_stack$1, /* MenhirState1 */4);
  }
  
}

function parse(lexer, lexbuf) {
  var _menhir_env = /* record */[
    /* _menhir_lexer */lexer,
    /* _menhir_lexbuf */lexbuf,
    /* _menhir_token : () */0,
    /* _menhir_error */false
  ];
  var _menhir_stack_001 = _menhir_env[/* _menhir_lexbuf */1][/* lex_curr_p */11];
  var _menhir_stack = /* tuple */[
    /* () */0,
    _menhir_stack_001
  ];
  var _menhir_env$1 = _menhir_discard(_menhir_env);
  return _menhir_goto_rev_expressions(_menhir_env$1, _menhir_stack, /* [] */0);
}

export {
  $$Error ,
  parse ,
  
}
/* No side effect */