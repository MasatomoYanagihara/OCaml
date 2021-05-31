(* 目的：リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ('a -> bool) -> 'a list -> 'a list *)
let rec filter p lst = match lst with
  [] -> []
  | first :: rest -> if p first then first :: filter p rest
                                else filter p rest

(* 目的：整数 n が正かどうかを調べる *)
(* is_positive : int -> bool *)
let is_positive n = n > 0

(* 目的：受け取ったリスト lst から正の要素のみを取り出す *)
(* filter_positive : int list -> int list *)
let filter_positive lst = filter is_positive lst

(* 目的：整数 n が3で割ると1余るかを調べる *)
(* is_mod3_1 : int -> bool *)
let is_mod3_1 n = n mod 3 = 1

(* 目的：リスト lst から3で割ると1余る要素のみを取り出す *)
(* fileter_mod3_1 : int list -> int list *)
let fileter_mod3_1 lst = filter is_mod3_1 lst
