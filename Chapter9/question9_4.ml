(* 目的：整数のリストを受け取ったら、そのリストの長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
  [] -> 0
  | first :: rest -> length rest + 1

(* テスト *)
let test1 = length [] = 0
let test2 = length [2] = 1
let test3 = length [1; 0; 1] = 3
let test6 = length [0; 0; 0; 2; 3] = 5
let test7 = length [1; 2; 3; 4; 5; 6; 7; 8; 9;] = 9