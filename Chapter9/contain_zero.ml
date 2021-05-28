(* 目的：受け取ったリスト lst に 0 が含まれているかを調べる *)
(* contain_zero : int list -> bool *)
let rec contain_zero lst = match lst with
  [] -> false
  |  first :: rest -> if first = 0 then true
                                   else contain_zero rest


(* テスト *)
let test1 = contain_zero [] = false
let test2 = contain_zero [0; 1; 1] = true
let test3 = contain_zero [1; 0; 1] = true
let test4 = contain_zero [1; 1; 0] = true
let test5 = contain_zero [1; 1; 1] = false
let test6 = contain_zero [0; 0; 0] = true
let test7 = contain_zero [1; 2; 3; 4; 5; 6; 7; 8; 9;] = false