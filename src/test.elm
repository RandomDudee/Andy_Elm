module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import String exposing (fromFloat)
import Maybe exposing (..)


halfToFloat: Int -> Float
halfToFloat i =
        (toFloat i) / 2



main =
    let
        input : Maybe Int
        input = Just 43

        result : Maybe Float
        result = Maybe.map halfToFloat input

        textResult: Maybe String
        textResult = Maybe.map fromFloat result

    in
       text(Maybe.withDefault "No Value" textResult)


product : List Int -> Int
product l =
          case l of
              [] -> 0
              head :: [] -> head
              head :: tail -> head * product tail

sum : List Int -> Int
sum l =
      case l of
          [] -> 0
          head :: [] -> head
          head :: tail -> head + sum tail

main =
    text( fromInt ( sum [1,2,5,6] ) )
