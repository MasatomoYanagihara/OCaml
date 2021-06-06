(* 売り切れを示す例外 *)
exception Urikire

(* 八百屋に置いてある野菜と値段のリストの例 *)
let yaoya_list = [
  ("トマト", 300);
  ("たまねぎ", 200);
  ("にんじん", 150);
  ("ほうれん草", 200)
]

(* 目的：item の値段を調べる *)
(* 見つからない場合は Urikire という例外を発生する *)
(* price : string -> (string * int) list -> int *)
let rec price item yaoya_list = match yaoya_list with
    [] -> raise Urikire
  | (yasai, nedan) :: rest -> if item = yasai then nedan
                                              else price item rest

(* 目的：yasai_list を買ったときの値段の合計を調べる *) 
(* total_price : string list -> (string * int) list -> int *)
let total_price yasai_list yaoya_list =
  (* 目的：yasai_list を買った時の値段の合計を調べる *)
  (* hojo : string list -> int *)
  let rec hojo yasai_list = match yasai_list with
      [] -> 0
    | first :: rest -> price first yaoya_list + hojo rest
  in try
       hojo yasai_list
     with Urikire -> 0

(* テスト *) 
let test1 = total_price ["たまねぎ"; "にんじん"] yaoya_list = 350 
let test2 = total_price ["たまねぎ"; "じゃがいも"; "にんじん"] yaoya_list = 0 
let test3 = total_price ["トマト"; "にんじん"] yaoya_list = 450