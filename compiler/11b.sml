type key = string
datatype 'a tree = LEAF | TREE of 'a tree * key * 'a tree * 'a

(* type itree =  *)
fun insert(LEAF, key, value) = TREE(LEAF, key, LEAF, value)
  | insert(TREE(l,k,r,v), key, value) = 
    if key < k
      then TREE(insert(l,key,value), k, r, v)
    else if key > k
      then TREE(l,k,insert(r,key,value), v)
    else
      TREE(l,k,r,value)
(* fun lookup(LEAF, key) = nil
 | lookup(TREE(l,k,r,v), key) = 
  if key < k
      then lookup(l, key)
    else if key > k
      then lookup(r, key)
    else v *)
fun lookup(TREE(l,k,r,v), key) = 
  if key < k
      then lookup(l, key)
    else if key > k
      then lookup(r, key)
    else v 


(* 
fun f(l: int list) = let
  val x::xs = l;
in
  x
end *)