(* 目的：自然数 n の階乗を求める *)
(* fac : int -> int *)
let rec fac n = if n = 0 then 1
                         else n * fac (n - 1)

(* テスト *)
let test0 = fac 0 = 1
let test1 = fac 1 = 1
let test2 = fac 2 = 2
let test3 = fac 3 = 6
let test4 = fac 4 = 24
let test5 = fac 10 = 3628800