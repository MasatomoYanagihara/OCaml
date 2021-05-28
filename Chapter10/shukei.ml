(* 目的：学生リスト lst のうち各成績の人数を集計する *)
(* syukei : gakusei_t list -> int * int * int * int *)
let rec syukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | {namae = n; tensuu = t; seiseki = s} :: rest ->
      let shukei_rest = shukei rest in
      match syukei_rest with
        (a, b, c, d) -> if      s = "A" then (a + 1, b, c, d)
                        else if s = "B" then (a, b + 1, c, d)
                        else if s = "C" then (a, b, c + 1, d)
                        else                 (a, b, c, d + 1)


(* 別の記述例 *)
let rec syukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | {namae = n; tensuu = t; seiseki = s} :: rest ->
      let (a, b, c, d) = shukei rest in
        if      s = "A" then (a + 1, b, c, d)
        else if s = "B" then (a, b + 1, c, d)
        else if s = "C" then (a, b, c + 1, d)
        else                 (a, b, c, d + 1)