(* 目的：lst の中から n より小さい要素のみを取り出す *)
(* take_less : int -> int list -> int list *)
let rec take_less1 n lst = match lst with
  [] -> []
  | first :: rest -> if first < n
                       then first :: take_less n rest
                       else take_less n rest

(* 目的：lst の中から n より大きい要素のみを取り出す *)
(* take_greater : int -> int list -> int list *)
let rec take_greater1 n lst = match lst with
  [] -> []
  | first :: rest -> if first > n
                       then first :: take_greater n rest
                       else take_greater n rest

(* 目的：リスト lst の中から条件 p を満たす要素のみを取り出す *)
(* filter : ('a -> bool) -> 'a list -> 'a list *)
let rec filter p lst = match lst with
  [] -> []
  | first :: rest -> if p first then first :: filter p rest
                                else filter p rest

(* filterを使用したバージョン *)
let take_less2 n lst = filter (fun item -> item < n) lst
let take_greater2 n lst = filter (fun item -> item > n) lst

(* 目的：lst の中から n より p である要素のみを取り出す *)
(* take : int -> int list -> (int -> int -> bool) -> int list *)
let take n lst p = filter (fun item -> p item n) lst

(* take関数を作りさらに一般化したバージョン *)
let take_less3 n lst = take n lst (<)
let take_greater3 n lst = take n lst (>)

(* 目的：受け取った lst をクイックソートを使って昇順に整列する *)
(* quick_sort : int list -> int list *)
let rec quick_sort1 lst = match lst with
  [] -> []
  | first :: rest -> quick_sort (take_less1 first rest)
                     @ [first]
                     @ quick_sort (take_greater1 first rest)

(* 局所変数を使用したバージョン *)
let rec quick_sort2 lst =
  let take n lst p = filter (fun item -> p item n) lst
  in let take_less n lst = take n lst (<)
  in let take_greater n lst = take n lst (>)
  in match lst with
    [] -> []
    | first :: rest -> quick_sort (take_less first rest)
                       @ [first]
                       @ quick_sort (take_greater first rest)

(* テスト *)
let test0 = quick_sort2 [] = []
let test1 = quick_sort2 [1] = [1]
let test2 = quick_sort2 [1; 2] = [1; 2]
let test3 = quick_sort2 [2; 1] = [1; 2]
let test4 = quick_sort2 [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]