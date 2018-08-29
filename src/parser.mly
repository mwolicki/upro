%token <string> ID
%token <string> STRING
%token RULE COMMA FULLSTOP LEFT_BRACKET RIGHT_BRACKET EOF
%start <_> parse
%%

parse: rev_expressions ; EOF { List.rev $1 }

rev_expressions:
| { [] }
| tail = rev_expressions; head = expression { head::tail }

single_arg:
| v = ID { `Atom v }
| v = STRING { `Var v }

fact: id = ID; LEFT_BRACKET; args = rev_relation_args; RIGHT_BRACKET { `Fact(id, List.rev args) }

rev_facts : 
| tail=rev_facts;COMMA;head=fact { head::tail }
| f=fact { [f] }

expression:
| fact; FULLSTOP { $1 }
| lhs = fact; RULE; rhs = rev_facts; FULLSTOP { `Relation(lhs, List.rev rhs) }


rev_relation_args:
| args=rev_relation_args; COMMA; arg = single_arg { arg::args }
| v = single_arg { [ v ] }
