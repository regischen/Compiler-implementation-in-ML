datatype degree = Duke | Marquis | Earl | Viscount | Baron;

fun lady  Duke = "Duchess"
| lady  Marquis = "Marchioness"
| lady  Earl = "Countess"
| lady  Viscount = "Viscountess"
| lady  Baron = "Baroness"

datatype person = King 
| Peer of string * string * int
| Knight of string
| Esquire of string * string
| Peasant of string;

(* fun title King = "His Majesty the King" 
| title (Peer(deg,terr,_)) = "The " ˆ deg ˆ " of " ˆ terr 
| title (Knight name) ="Sir " ˆ name
| title (Esquire(name, village)) = name ^ " of " ^ village
| title (Peasant name ) =name ;
 
fun superior (King , Peer _) = true
| superior (King , Knight _) = true
| superior (King , Esquire _) = true
| superior (King , Peasant _) = true
| superior (Peer _, Knight _) = true
| superior (Peer _, Esquire _) = true
| superior (Peer _, Peasant _) = true
| superior (Knight _, Esquire _) = true
| superior (Knight _, Peasant _) = true
| superior (Esquire _, Peasant _) = true
| superior _ = false; *)




(* fun toN [] = []
 | toN ( King ::ps) = 4:: toN(ps)
 | toN ( (Peer _)::ps) = 3:: toN(ps)
 | toN ( (Knight _)::ps) = 2:: toN(ps)
 | toN ( (Peasant _)::ps) = 1:: toN(ps); *)