(* 問題8.5 駅名の情報を格納するレコード型 ekimei_t を宣言せよ *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

(* 問題8.6 ekimei_t型のデータを受け取り、「路線名、駅名（かな）」の形式の文字列を返す関数 hyojiを作れ *)
(* 目的： 駅名のデータ ekimei_t型 を受け取り「路線名、駅名（かな）」の形式の文字列を返す*)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} ->
  shozoku ^ ", " ^ kanji ^ "（" ^ kana ^ "）"

(* テスト *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogdani"; shozoku = "丸ノ内線";}
          = "丸ノ内線, 茗荷谷（みょうがだに）"

(* 問題8.7 駅と駅の接続情報を格納するレコード型 ekikan_t を宣言せよ *)
type ekikan_t = {
  kiten : string;  (* 起点の駅名 *)
  shuten : string; (* 終点の駅名 *)
  keiyu : string;  (* 経由する路線名 *)
  kyori : float;   (* 2駅間の距離（km） *)
  jikan : int;     (* 所用時間（分） *)
}

