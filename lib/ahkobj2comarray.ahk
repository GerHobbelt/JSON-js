/*
Author: Naveen Garg
license: GPL v2
*/

testahkobj2comarray:
o := {a: 4, b: 5}
a := ahkobj2comarray(o)
o2 := comarray2ahkobj(a)
if (tostring(o) != tostring(o2))
  msgbox error
msgbox % "o: `n" tostring(o)
msgbox % "o2: `n" tostring(o2)
return	       

ahkobj2comarray(o){
 for k, v in o 				    
 {	     				    
   n := A_Index				    
 }	     				    
 arr := ComObjArray(VT_VARIANT:=12, n, 2)    
 for k, v in o 				    
 {	     				    
   if IsObject(k) or Isobject(v)
     {	      					  
       throw "error objects not allowed" 
     }			   
   arr[A_Index - 1, 0] := k		    
   arr[A_Index - 1, 1] := v		    
 }      	       	       	       	       	    
return arr
}      	
       	


