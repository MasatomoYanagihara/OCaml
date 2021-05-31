(* 目的：文字列のリスト lst を受け取ったら、その中の要素を前から順に全部、結合した文字列を返す *)
(* concat : string list -> string *)
let rec concat lst = match lst with
  [] -> ""
  | first :: rest -> first ^ concat rest

(* テスト *)
let test0 = concat [] = ""
let test1 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
