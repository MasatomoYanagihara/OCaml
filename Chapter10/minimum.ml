(* 目的：受け取った lst の中の最小値を返す *)
(* minimum : int list -> int *)
let rec minimum lst = match lst with
  [] -> max_int
  | first :: rest ->
    let min_rest = minimum rest in
    if first <= min_rest then first
                         else min_rest

(* テスト *)
let test0 = minimum [] = max_int
let test1 = minimum [3] = 3
let test2 = minimum [1; 2] = 1
let test3 = minimum [3; 2] = 2
let test4 = minimum [3; 2; 6; 4; 1; 8] = 1