
let test_tokenizer s =
  let lexbuf = Lexing.from_string s in
  let result = Entry_tokenizer.Main.parse_with_error lexbuf in
  match result with 
  | Some l -> Entry_tokenizer.Entry.output_value stdout l
  | None -> Printf.printf "None\n"

let () =
  test_tokenizer "some entry with \"quoted string\""