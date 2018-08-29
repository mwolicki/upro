%token <string> ID
%token <string> STRING
%token RULE COMMA FULLSTOP QUESTION LEFT_BRACKET RIGHT_BRACKET EOF
%start <Ast.ast> parse
%%

parse:
| expressions ; EOF { $1 }

expressions:
| l = rev_expressions { List.rev l }

rev_expressions:
| { [] }
| tail = rev_expressions; head = expression { head::tail }


single_arg:
| v = ID { `Atom v }
| v = STRING { `Var v }


expression:
| r=relation; FULLSTOP { r }

rev_relation_args:
| args=rev_relation_args; COMMA; arg = single_arg { arg::args }
| v = single_arg { [ v ] }

relation:
| id = ID; LEFT_BRACKET; args = rev_relation_args; RIGHT_BRACKET { `Relation(id, List.rev args) }