(* 目的：init から始めて lst の要素を右から順に f を流し込む *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的：first は無視して rest_result に1を加える *)
(* add_one : int -> int -> int *)
let add_one first rest_result = 1 + rest_result

(* 目的：受け取ったリスト lst の長さを求める *)
(* length : 'a list -> int *)
let length lst = fold_right add_one lst 0

(* 局所関数を使用したバージョン *)
let length lst =
  let add_one first rest_result = 1 + rest_result
  in fold_right add_one lst 0

(* 無名関数を使用したバージョン *)
let length lst = fold_right (fun first rest_result -> 1 + rest_result) lst 0

 (* テスト *)
 let test1 = length [] = 0
 let test2 = length [2] = 1
 let test3 = length [1; 3] = 2
 let test4 = length [0; 0; 1; 2; 3; 4] = 6
 let test5 = length [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 10