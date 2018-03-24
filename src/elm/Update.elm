module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)


-- Update
-- The update function represents how we turn our messages and old model state into a new model state with any needed subsequent messages.
-- For instance, if we had a Login message containing a new User, we could update the user in the model, and return the new model.


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        DisplayMessage message ->
            noOp { model | message = message }

        UpdateUsername username ->
            noOp { model | user = Just { username = username } }

        LocalStorage event ->
            localStorageUpdates event model


noOp : Model -> ( Model, Cmd Msg )
noOp model =
    ( model, Cmd.none )


localStorageUpdates : LocalStorageEvent -> Model -> ( Model, Cmd Msg )
localStorageUpdates event model =
    ( model, Cmd.none )
