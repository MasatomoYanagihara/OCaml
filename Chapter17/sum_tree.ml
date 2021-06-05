(* 木を表す型 *)
type tree_t = Empty                          (* 空の木 *)
            | Leaf of int                    (* 葉 *)
            | Node of tree_t * int * tree_t  (* 節 *)

(*
  tree は
    - Empty             空の木、あるいは
    - Leaf (n)        値が n の葉、あるいは
    - Node (t1, n, t2)  左の木がt1、値がn、右の木がt2であるような節
                                （t1とt2が自己参照のケース）
  という形
*)

(* 目的：treeに含まれる整数を全てを加える *)
(* sum_tree : tree_t -> int *)
let rec sum_tree tree = match tree with
    Empty -> 0
  | Leaf (n) -> n
  | Node (t1, n, t2) -> sum_tree t1 + n + sum_tree t2

(* 木の例 *)
let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)

(* テスト *)
let test1 = sum_tree tree1 = 0
let test2 = sum_tree tree2 = 3
let test3 = sum_tree tree3 = 7
let test4 = sum_tree tree4 = 15