(* 目的： *)
(* func : int -> int *)
let rec func n = if n = 0 then 3
                          else 2 * func (n - 1) -1

(* テスト *)
let test0 = func 0 = 3
let test1 = func 1 = 5
let test2 = func 2 = 9
let test3 = func 3 = 17
let test4 = func 4 = 33
let test5 = func 5 = 65