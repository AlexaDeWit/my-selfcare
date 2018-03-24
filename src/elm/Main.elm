module Main exposing (..)

import Html exposing (Html)
import Model exposing (..)
import View exposing (..)
import Msg exposing (..)
import Update exposing (..)
import Subscriptions exposing (..)


-- The main entry point. This define how the "program" should be set up, which functions should handle updates, presentations(view), and so on.


main : Program Never Model Msg
main =
    Html.program
        { init = update (LocalStorage RequestJwt) defaultModel
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


defaultModel : Model
defaultModel =
    Model Nothing "Welcome To Empty App Thing"
