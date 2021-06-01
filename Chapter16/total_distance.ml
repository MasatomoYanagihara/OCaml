(* 距離と距離の合計を持っている型 *)
type distance_t = {
  kyori : float;
  total : float;
}

(* 目的：先頭からリスト中の各点までの距離の合計を計算する *)
(* ここで total0 はこれまでの距離の合計 *)
(* hojo : distance_t list -> float -> distance_t list *)
let rec hojo lst total0 = match lst with
  [] ->  []
  | {kyori = k; total = t} :: rest -> {kyori = k; total = total0 +. k} :: hojo rest (total0 +. k)

(* 目的：先頭からリスト中の各点までの距離の合計を計算する *)
(* total_distance : distance_t list -> distance_t list *)
let rec total_distance lst = hojo lst 0.0

(* hojoを局所関数にしたバージョン *)
let rec total_distance lst =
  let rec hojo lst total0 = match lst with
    [] -> []
    | {kyori = k; total = t} :: rest -> {kyori = k; total = total0 +. k} :: hojo rest (total0 +. k)
  in hojo lst 0.0
