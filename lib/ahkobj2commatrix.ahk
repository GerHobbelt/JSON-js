;; ahkobj2comMatrix(o)
ahkobj2comMatrix(o){  
n := o.maxindex()  
m := o[1].maxindex()	     				    
if ((n == 0) or (m == 0)) {
 ; listvars      
 ; msgbox error
return 0              
}       
 arr := ComObjArray(VT_VARIANT:=12, n, m)    
 for i, v in o 	       	       	       	    
 {                 
   for j, v2 in v {
   arr[i - 1, A_Index - 1] := v2	    
 }                 
}    	       	       	       	    
return arr         
}      	           
 
