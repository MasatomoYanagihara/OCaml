(* 目的：init から始めて lst の要素を右から順に f を流し込む *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的：first をリスト rest_result の先頭に加える *)
(* cons : 'a -> 'a list -> 'a list *)
let cons first rest_result = first :: rest_result

(* 目的：lst1 と lst2 を受け取りそれらを結合したリストを返す *)
(* append : 'a list -> 'a list -> 'a list *)
let append lst1 lst2 = fold_right cons lst1 lst2

(* 局所関数を使用したバージョン *)
let append lst1 lst2 =
  let cons first rest_result = first :: rest_result
  in fold_right cons lst1 lst2

(* 無名関数を使用したバージョン *)
let appen lst1 lst2 = fold_right (fun first rest_result -> first :: rest_result) lst1 lst2