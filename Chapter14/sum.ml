(* 目的：init から始めて lst の要素を右から順に f を流し込む *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的：first と rest_result を加える *)
(* add_int : int -> int -> int *)
let add_int first rest_result = first + rest_result

(* 目的：受け取ったリスト lst の各要素の和を求める *)
(* sum : int list -> int *)
let sum lst = fold_right add_int lst 0

(* 局所関数を使用したバージョン *)
let sum lst =
  let add_int first rest_result = first + rest_result
  in fold_right add_int lst 0

(* 無名関数を使用したバージョン *)
let sum lst = fold_right (fun first rest_result -> first + rest_result) lst 0

(* +演算子をprefix関数として使用したバージョン *)
let sum lst = fold_right (+) lst 0

(* テスト *)
let test1 = sum [] = 0
let test2 = sum [2] = 2
let test3 = sum [1; 3] = 4
let test4 = sum [0; 0; 1] = 1 
let test5 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55