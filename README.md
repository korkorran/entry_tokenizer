# Entry Tokenizer

an OCaml library to tokenize terminal entries.

The goal of this library is to transform terminal entry into sequence of tokens :

 - "git commit" -> ["git", "commit"]
 - "cp -R foo ./bar" -> ["cp", "-R", "foo", "./bar"]
 - "git commit -m \\"a sample message\\"" -> ["git", "commit", "-m", "\\"a sample message\\""]
