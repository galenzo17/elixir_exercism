module BettysBikeShop exposing (..)

-- TODO: import the String module
import String exposing (..)

penceToPounds pence =
    pence/100


poundsToString pounds =
    case pounds of 
        _ -> String.concat ["£",String.fromFloat pounds]
