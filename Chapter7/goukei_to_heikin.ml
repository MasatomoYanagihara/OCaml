(* 目的：合計を計算する関数 *)
(* goukei : int -> int -> int -> int ->int -> int *)
let goukei arg1 arg2 arg3 arg4 arg5 = arg1 + arg2 + arg3 + arg4 + arg5

(* テスト *)
let test1_1 = goukei 50 40 50 90 10 = 240
let test1_2 = goukei 60 60 60 60 60 = 300
let test1_3 = goukei 15 43 17 91 89 = 255


(* 目的：平均を計算する関数 *)
(* heikin : int -> int -> int -> int ->int -> int *)
let heikin arg1 arg2 arg3 arg4 arg5 = (goukei arg1 arg2 arg3 arg4 arg5) / 5

(* テスト *)
let test2_1 = heikin 50 40 50 90 10 = 48
let test2_2 = heikin 60 60 60 60 60 = 60
let test2_3 = heikin 15 43 17 91 89 = 51

(* 目的：国語、数学、英語、理科、社会の５教科の点数を与えられたらその合計点と平均点を組にして返す *)
(* goukei_to_heikin : int -> (int * int)  *)
let goukei_to_heikin arg1 arg2 arg3 arg4 arg5 = (
        goukei arg1 arg2 arg3 arg4 arg5, 
        heikin arg1 arg2 arg3 arg4 arg5
)

(* テスト *)
let test3_1 = goukei_to_heikin 50 40 50 90 10 = (240, 48)
let test3_2 = goukei_to_heikin 60 60 60 60 60 = (300, 60)
let test3_3 = goukei_to_heikin 15 43 17 91 89 = (255, 51)
