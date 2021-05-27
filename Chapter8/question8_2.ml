(* 問題8.2 お小遣い帳の情報を格納するレコード型 okozukai_t を宣言せよ *)
type okozukai_t = {
  name : string;
  price : int;
  place : string;
  date : string;
}

(* okozukai_t型を持つデータを定義せよ *)
{
  name : "鉛筆";
  price : 80;
  place : "本屋";
  date : "2021-03-19"
}