ahkvector2json(json, o){
len := o.maxindex()
 arr := "{ ""count"" : " len
loop % len {
       arr .= " , " A_Index - 1 " : 0"
 }      	       	       	
arr .= " }"       	       	    
j := json.parse(arr)   
loop % j.count {
j[A_Index - 1] := o[A_Index]
}                
return json.stringify(j) 
}      	
