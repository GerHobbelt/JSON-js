ahkvec2json(json, o, recursion = 0 ){
static recursioncount 
if recursion == 0
  recursioncount := 0 
else
  recursioncount += 1
recursion += 1
if recursioncount > 4
  throw Exception("recursion exceeded 4", -1)
len := o.maxindex()               
 arr := "{ ""count"" : " len      
loop % len {                      
       arr .= " , " A_Index - 1 " : 0"
 }      	       	       	  
arr .= " }"       	       	    
j := json.parse(arr)              
loop % j.count {                  
if isobject(o[A_Index])           
j[A_Index - 1] := json.parse(ahkvec2json(json, o[A_Index]), recursion)
else                              
j[A_Index - 1] := o[A_Index]      
}                                 

return json.stringify(j)          
}      	                          
