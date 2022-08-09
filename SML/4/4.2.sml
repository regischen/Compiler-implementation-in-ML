datatype degree = Duke | Marquis | Earl | Viscount | Baron;

fun lady Duke = "Duchess"
| lady Marquis  = "Marchioness" 
| lady Earl = "Countess"
| lady Viscount = "Viscountess"
| lady Baron = "Baroness";  


fun not true = false 
| not false = true;

(* datatype order = LESS | EQUAL | GREATER; *)

datatype 'a option = NONE | SOME of 'a;

datatype ('a,'b)sum = In1 of 'a | In2 of 'b;

exception Failure; 
exception Impossible;
exception Failedbecause of string;
exception Badvalue of int;
