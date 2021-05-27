(* 問題8.1 本に関する情報を格納するレコード型 book_t を宣言せよ *)
type book_t = {
  title : string; (* タイトル *)
  author : string; (* 著者 *)
  publisher : string; (* 出版社 *)
  price : int; (* 値段 *)
  isbn : string; (* ISBN *)
}

(* book_t型を持つデータを定義せよ *)
{
  title = "道をひらく";
  author = "松下幸之助";
  publisher = "PHP研究所";
  price = 870;
  isbn = "4-569-53407-4";
}