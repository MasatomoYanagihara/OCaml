type tree_t = Empty                          (* 空の木 *)
            | Leaf of int                    (* 葉 *)
            | Node of tree_t * int * tree_t  (* 節 *)

(* ２分探索木の例 *) 
let tree1 = Empty 
let tree2 = Leaf (3) 
let tree3 = Node (Leaf (1), 2, Leaf (3)) 
let tree4 = Node (Empty, 7, Leaf (9)) 
let tree5 = Node (tree3, 6, tree4) 

(* 目的：２分探索木treeにdataを追加した２分探索木を返す *)
(* insert_tree : tree_t -> int -> tree_t *)
let rec insert_tree tree data = match tree with
    Empty -> Leaf (data)
  | Leaf (n) ->
      if data = n then Leaf (n)
      else if data < n then Node (Leaf (data), n, Empty) 
                       else Node (Empty, n, Leaf (data))
  | Node (t1, n, t2) ->
      if data = n then Node (t1, n, t2)
      else if data < n then Node (insert_tree t1 data, n, t2)
                       else Node (t1, n, insert_tree t2 data)

(* テスト *)
let test1 = insert_tree Empty 3 = Leaf (3)
let test2 = insert_tree (Leaf (3)) 2 = Node (Leaf (2), 3, Empty)
let test3 = insert_tree (Leaf (3)) 3 = Leaf (3)
let test4 = insert_tree (Leaf (3)) 4 = Node (Empty, 3, Leaf (4))
let test5 = insert_tree tree5 4 = Node (Node (Leaf (1), 2, Node (Empty, 3, Leaf (4))), 6, Node (Empty, 7, Leaf (9)))