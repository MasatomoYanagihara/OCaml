(* 学生一人分のデータを表す型 *)
type student_t = {
  name : string;  (* 名前 *)
  score : int;    (* 点数 *)
  grade : string; (* 成績 *)
}

(* 目的：学生のデータ gstudent を受け取り成績のついたデータを返す *)
(* evaluation : student_t -> student_t *)
let evaluation student = match student with {name = n; score = s; grade = g} ->
  if      s >= 80 then {name = n; score = s; grade = "A"}
  else if s >= 70 then {name = n; score = s; grade = "B"}
  else if s >= 60 then {name = n; score = s; grade = "C"}
  else                 {name = n; score = s; grade = "D"}

(* 目的：学生のリスト lst を受け取り成績を入れたリストを返す *)
(* map_evaluation : student_t list -> student_t list *)
let rec map_evaluation lst = match lst with
  [] -> []
  | first :: rest -> evaluation first :: map_evaluation rest