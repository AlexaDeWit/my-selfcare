module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import View exposing (..)
import Msg exposing (..)
import Update exposing (..)
import Subscriptions exposing (..)


-- The main entry point. This define how the "program" should be set up, which functions should handle updates, presentations(view), and so on.


main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- This function constructs the initial state of the elm application. It's how we "start"


init : ( Model, Cmd Msg )
init =
    let
        model : Model
        model =
            Model Nothing "Welcome To Empty App Thing"
    in
        ( model, Cmd.none )
