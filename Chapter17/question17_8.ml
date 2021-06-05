(* 木を表す型 *)
type tree_t = Empty                          (* 空の木 *)
            | Leaf of int                    (* 葉 *)
            | Node of tree_t * int * tree_t  (* 節 *)

(* 木の例 *) 
let tree1 = Empty 
let tree2 = Leaf (3) 
let tree3 = Node (tree1, 4, tree2) 
let tree4 = Node (tree2, 5, tree3)
let tree5 = Node (tree3, 5, tree3)

(* 目的：2つの引数を受け取り、大きい方を返す *)
(* max : 'a -> 'a *)
let max a b = if a > b then a else b

(* 目的：tree に含まれる節と葉の数の合計を返す *)
(* tree_depth : tree_t -> int *)
let rec tree_depth tree = match tree with
    Empty -> 0
  | Leaf (num) -> 0
  | Node (t1, num, t2) -> 1 + max (tree_depth t1) (tree_depth t2)

(* テスト *) 
let test1 = tree_depth tree1 = 0 
let test2 = tree_depth tree2 = 0 
let test3 = tree_depth tree3 = 1 
let test4 = tree_depth tree4 = 2
let test5 = tree_depth tree5 = 2