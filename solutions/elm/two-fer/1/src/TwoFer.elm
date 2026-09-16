module TwoFer exposing (twoFer)

modelo = "One for you, one for me."

fever name = 

    String.concat ["One for ",name ,", one for me."]
twoFer : Maybe String -> String
twoFer name =
    case name of
        Nothing -> modelo
        Just names  -> fever names
        
        
