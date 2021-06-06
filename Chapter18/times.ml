(* 目的：lst 中の整数を全て掛け合わせる *)
(* times1 : int list -> int *)
let rec times1 lst = match lst with
    [] -> 1
  | first :: rest -> first * times1 rest

(* 0 が見つかったことを示す例外 *)
exception Zero

(* 目的：lst 中の整数を全て掛け合わせる *)
(* times2 : int list -> int  *)
let rec times2 lst =
  (* 目的：lst 中の整数を全て掛け合わせる *)
  (* 0 を見つけたら例外 Zero を起こす *)
  (* hojo : int list -> int *)
  let rec hojo lst = match lst with
      [] -> 1
    | first :: rest -> if first = 0 then raise Zero
                                    else first * hojo rest
  in
  try
    hojo lst
  with Zero -> 0

(* テスト *) 
let test1 = times2 [3; 1; 4] = 12 
let test2 = times2 [0] = 0 
let test3 = times2 [3; 1; 0; 4] = 0 
let test4 = times2 [3; 2; 1; 0] = 0 

