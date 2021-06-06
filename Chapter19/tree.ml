(* シグネチャとモジュール宣言を別々に記述 *)
(* このシグネチャで複数のモジュールを作る場合に有効 *)

(* ２分木を表すモジュールのシグネチャ *) 
module type Tree_t = sig 
  type ('a, 'b) t 
    (* キーが 'a 型、値が 'b 型の木の型。型の中身は非公開 *) 
 
  val empty : ('a, 'b) t 
    (* 使い方：empty *) 
    (* 空の木 *) 
 
  val insert : ('a, 'b) t -> 'a -> 'b -> ('a, 'b) t 
    (* 使い方：insert tree key value *) 
    (* 木 tree にキー key と値 value を挿入した木を返す *) 
    (* キーが既に存在していたら新しい値に置き換える *) 
 
  val search : ('a, 'b) t -> 'a -> 'b 
    (* 使い方：search tree key *) 
    (* 木 tree の中からキー key に対応する値を探して返す *) 
    (* みつからなければ Not_found を raise する *) 
end 

(* ２分探索木を表すモジュール *)
module Tree : Tree_t = struct
  (* ２分探索木を表す型 *)
  (* 名前が t となっているので外からアクセスする際、Tree.tになる *)
  (* 名前を tree_t にすると外からアクセスする際、Tree.tree_tとなり冗長になる *)
  type ('a, 'b) t = Empty
                  | Node of ('a, 'b) t * 'a * 'b * ('a, 'b) t

  (* 空の木 *)
  let empty = Empty

  (* 目的：tree にキーが k で値が v を挿入した木を返す *)
  (* insert : ('a, 'b) t -> 'a -> 'b -> ('a, 'b) t *)
  let rec insert tree k v = match tree with
      Empty -> Node (Empty, k, v, Empty)
    | Node (left, key, value, right) ->
        if k = key then Node (insert left k v, key, value, right)
                   else Node (left, key, value, insert right k v)

  (* 目的：tree の中のキー k に対応する値を探して返す *)
  (* serch : ('a, 'b) t -> 'a -> 'b *)
  let rec search tree k = match tree with
      Empty -> raise Not_found
    | Node (left, key, value, right) ->
        if k = key then value
                   else if k < key then search left key
                                   else search right key
end