(* 問題8.3 人物データを格納するレコード型 person_t を宣言せよ *)
type person_t = {
  name : string;
  height : int;
  weight : int;
  barthday : string;
  blood_type : string;
}

(* person_t型を持つデータを定義せよ *)
{
  name : "大森荘蔵";
  height : 174;
  weight : 62;
  barthday : "1921-08-01";
  blood_type : "A";
}