
wsh := ComObjCreate("MSScriptControl.ScriptControl")
wsh.language := "jscript"             
FileRead, jsonParser, % "json.js"     
wsh.Eval( jsonParser )                
json := wsh.Eval("JSON")              
if (!json){                           
    Msgbox, % "error making json parser"
} 
  
  
jsonString := "{ 1: ""blah"", ""s"": ""foo"" }"
                                            
j := json.parse(jsonString)                 
msgbox, % j.s                               
j.s := "hello"                              
  msgbox % j.s                             
  msgbox % json.stringify(j)               
  
