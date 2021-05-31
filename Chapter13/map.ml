(* 目的：関数 func とリスト lst を受け取り func を施したリストを返す *)
(* map : ('a -> 'a) -> 'a list -> 'b list *)
let rec map func lst = match lst with
  [] -> []
  | first :: rest -> func first :: map func rest