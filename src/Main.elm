module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import View exposing (..)
import Msg exposing (..)


main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        mdl =
            case msg of
                DisplayMessage message ->
                    { model | message = message }

                UpdateUsername username ->
                    { model | username = Just username }

        msgp =
            Cmd.none
    in
        ( mdl, msgp )



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
