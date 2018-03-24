module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)


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
