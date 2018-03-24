module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import View exposing (..)
import Msg exposing (..)
import Update exposing (..)
import Subscriptions exposing (..)


main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    let
        model : Model
        model =
            Model Nothing "Welcome To Empty App Thing"
    in
        ( model, Cmd.none )
