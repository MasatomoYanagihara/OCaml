(* 目的：リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ('a -> bool) -> 'a list -> 'a list *)
let rec filter p lst = match lst with
  [] -> []
  | first :: rest -> if p first then first :: filter p rest
                                else filter p rest

(* 目的：init から始めて lst の要素を右から順に f を流し込む *)
(* fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)                                

(* 目的：n から 1 までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then []
                               else n :: enumerate (n - 1)

(* enumerateのテスト *)
let test0_enumerate = enumerate 0 = []
let test1_enumerate = enumerate 1 = [1]
let test2_enumerate = enumerate 6 = [6; 5; 4; 3; 2; 1]

(* 目的：n の約数のリストを返す *)
(* divisor : int -> int list *)
let divisor n = filter (fun x -> n mod x = 0) (enumerate n)

(* divisorのテスト *)
let test0_divisor = divisor 0 = []
let test1_divisor = divisor 6 = [6; 3; 2; 1]
let test2_divisor = divisor 24 = [24; 12; 8; 6; 4; 3; 2; 1] 

(* 目的：m 以下の完全数のリストを返す *)
(* perfect_number : int -> int list *)
let perfect_number m = filter (fun n -> fold_right (+) (divisor n) 0 - n = n) (enumerate m)

(* perfect_numberのテスト *)
let test0_perfect_number = perfect_number 0 = [] 
let test1_perfect_number = perfect_number 100 = [28; 6] 
let test2_perfect_number = perfect_number 10000 = [8128; 496; 28; 6] 