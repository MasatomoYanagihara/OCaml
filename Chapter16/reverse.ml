(* 目的：与えられたリストを逆順にして返す *)
(* reverse : 'a list -> 'a list *)
let reverse lst = 
  (* 目的：(lst の逆順のリスト) @ result を返す *)
  (* ここで result はこれまでの要素を逆順にしたリストを返す *)
  let rec rev lst result = match lst with
    [] -> result
    | first :: rest -> rev rest (first :: result)
  in rev lst []