(* A module with functions to test *)
let test_tokenizer s tokens () =
  let lexbuf = Lexing.from_string s in
  let result = Entry_tokenizer.Main.parse_with_error lexbuf
  in
  Alcotest.(check (option (list string))) "tokens" tokens result

(* Run it *)
let () =
  let open Alcotest in
  run "Test" [
      "tokenizer", [
        test_case "tokenize json" `Quick (test_tokenizer "name Alice" (Some ["name"; "Alice"]))
      ]
    ]