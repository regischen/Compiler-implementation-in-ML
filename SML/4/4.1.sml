datatype person = King |
Peer of string*string*int |
Knight of string |
Peasant of string |
Esquire of string * string ;

val persons = [King, Peasant "Jack Cade", Knight "Gawain"];

fun title King = "His Majesty the King"
  | title (Peer(deg,terr,_)) = "The " ^ deg ^ " of " ^ terr
  | title (Knight name) = "Sir " ^ name
  | title (Peasant(name)) = name;

fun sirs [] = []
| sirs ((Peer s) :: ps) = s :: (sirs ps)
| sirs (p :: ps) = sirs ps;

fun superior (King, Peer _) = true
| superior (King, Knight _) = true
| superior(King, Peasant _) = true
| superior(Peer _, Knight _) = true
| superior(Peer _, Peasant _) = true
| superior(Knight _, Peasant _) = true
| superior _ = false;

(* exercise 4.1 *)
