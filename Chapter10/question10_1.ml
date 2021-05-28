(* 目的：昇順に並んでいる整数のリスト lst と整数 n を受け取ったら、昇順になるように n を挿入する *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if first < n then first :: insert rest n
                                  else n :: lst

(* テスト *)
let test1 = insert [1; 2; 3; 5;] 4 = [1; 2; 3; 4; 5]
let test2 = insert [2; 4; 6;] 1 = [1; 2; 4; 6]
let test3 = insert [1] 2 = [1; 2]
let test4 = insert [5] 1 = [1; 5]
let test5 = insert [123; 8888;12341324] 8889 = [123; 8888; 8889; 12341324] 
let test6 = insert [] 1 = [1]
let test7 = insert [7; 8; 9; 10] 2 = [2; 7; 8; 9; 10]
