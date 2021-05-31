(* 目的：init から始めて lst の要素を右から順に f を流し込む *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的：二つの文字列を結合する *)
(* append_string : string -> string *)
let append_string first rest_result = first ^ rest_result

(* 目的：文字列のリスト lst を受け取ったら、その中の要素を前から順に全部、結合した文字列を返す *)
(* concat : string list -> string *)
let concat lst = fold_right append_string lst ""

(* テスト *) 
let test1 = concat [] = "" 
let test2 = concat ["春"] = "春" 
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬" 