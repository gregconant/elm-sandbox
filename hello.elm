import Html exposing (span, text)
import Html.Attributes exposing (class)
import Signal exposing (Signal, Address)
import Graphics.Element exposing (..)
import Mouse

main =
    Mouse.position |> Signal.map view

view: (Int,Int) -> Html.Html

view (x,y) =
    Html.div
    [Html.Attributes.style [("color", "red")]]
    [Html.text
    ("x = "
    ++ (toString x) 
    ++ ",y = "
    ++ (toString y))]