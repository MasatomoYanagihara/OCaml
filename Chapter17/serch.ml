type tree_t = Empty                          (* 空の木 *)
            | Leaf of int                    (* 葉 *)
            | Node of tree_t * int * tree_t  (* 節 *)

(* ２分探索木の例 *)
let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (Leaf (1), 2, Leaf (3))
let tree4 = Node (Empty, 7, Leaf (9))
let tree5 = Node (tree3, 6, tree4)

(* 目的：dataが２分探索木treeに含まれているか調べる *)
(* serch : tree_t -> int -> bool *)
let rec serch tree data = match tree with
    Empty -> false
  | Leaf (n) -> data = n
  | Node (t1, n, t2) -> if data = n
                          then true
                          else if data < n
                            then serch t1 data
                            else serch t2 data

(* テスト *)
let test1 = serch tree1 3 = false
let test2 = serch tree2 3 = true
let test3 = serch tree2 4 = false
let test4 = serch tree5 6 = true
let test5 = serch tree5 2 = true
let test6 = serch tree5 1 = true
let test7 = serch tree5 4 = false
let test8 = serch tree5 7 = true
let test9 = serch tree5 8 = false
