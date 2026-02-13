%token <string> STRING
%token EOF
%start <Entry.value option> prog
%type <string list> list_tokens
%%

prog:
  | v = list_tokens; EOF { Some v }
  | EOF       { None   } ;

list_tokens:
  | vl = nonempty_list(STRING) { vl }