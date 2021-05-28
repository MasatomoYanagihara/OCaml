(* 
  int list は
  - []              空リスト、あるいは
  - firtst :: rest  最初の要素が first で残りのリストが rest
                    （rest が自己参照のケース）
  という形
 *)

 (* 目的：受け取ったリスト lst の各要素の和を求める *)
 (* sum : int list -> int *)
 let rec sum lst = match lst with
  [] -> 0
  | first :: rest -> first + sum rest

 (* テスト *)
 let test1 = sum [] = 0
 let test2 = sum [2] = 2
 let test3 = sum [1; 3] = 4
 let test4 = sum [0; 0; 1] = 1 
 let test5 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55