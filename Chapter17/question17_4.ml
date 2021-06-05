(* 月を表す型 *)
type year_t = January   of int
            | February  of int
            | March     of int
            | April     of int
            | May       of int
            | June      of int
            | July      of int
            | August    of int
            | September of int
            | October   of int
            | November  of int
            | December  of int

(* 星座を表す型 *) 
type seiza_t = Capricorus   (* 山羊座 *) 
             | Aquarius     (* 水瓶座 *) 
             | Pisces       (* 魚座 *) 
             | Aries        (* 牡羊座 *) 
             | Taurus       (* 牡牛座 *) 
             | Gemini       (* 双子座 *) 
             | Cancer       (* 蟹座 *) 
             | Leo          (* 獅子座 *) 
             | Virgo        (* 乙女座 *) 
             | Libra        (* 天秤座 *) 
             | Scorpius	    (* 蠍座 *) 
             | Sagittarius  (* 射手座 *) 

(* year_t型の値を受け取ってきたら、seiza_t型の星座を返す *)
(* seiza : year_t -> seiza_t *) 
let seiza year = match year with 
    January   (day) -> if day <= 19 then Capricorus  else Aquarius 
  | February  (day) -> if day <= 18 then Aquarius    else Pisces 
  | March     (day) -> if day <= 20 then Pisces      else Aries 
  | April     (day) -> if day <= 19 then Aries       else Taurus
  | May       (day) -> if day <= 20 then Taurus      else Gemini 
  | June      (day) -> if day <= 21 then Gemini      else Cancer 
  | July      (day) -> if day <= 22 then Cancer      else Leo 
  | August    (day) -> if day <= 22 then Leo         else Virgo 
  | September (day) -> if day <= 22 then Virgo       else Libra 
  | October   (day) -> if day <= 23 then Libra       else Scorpius 
  | November  (day) -> if day <= 21 then Scorpius    else Sagittarius 
  | December  (day) -> if day <= 21 then Sagittarius else Capricorus 
 
(* テスト *) 
let test1 = seiza (June      (11)) = Gemini 
let test2 = seiza (June      (30)) = Cancer 
let test3 = seiza (September (17)) = Virgo 
let test4 = seiza (October    (7)) = Libra 