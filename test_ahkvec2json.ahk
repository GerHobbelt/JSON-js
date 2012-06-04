            
json := json_init()                
arr := ["auto", "hot", "key"]
arrs := ahkvec2json(json, arr)
msgbox % arrs                
brr := ["auto", "hot", arr]
arrs := ahkvec2json(json, brr)
msgbox % arrs
                      
arr := ["auto", "hot", brr]
brr := ["auto", "hot", arr]
arrs := ahkvec2json(json, brr) ; throws Exception for exceeding recursion limit
msgbox % arrs
 


!q::exitapp
!r::reload
