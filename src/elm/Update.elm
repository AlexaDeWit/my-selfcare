module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)
import Routing exposing (..)


-- Update
-- The update function represents how we turn our messages and old model state into a new model state with any needed subsequent messages.
-- For instance, if we had a Login message containing a new User, we could update the user in the model, and return the new model.

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            noOp <| { model | route = parseLocation location }

        Login (UpdateUsername username) ->
            noOp <| updateFormData (\f -> { f | username = username }) model

        Login (UpdatePassword password) ->
            noOp <| updateFormData (\f -> { f | password = password }) model

        LocalStorage event ->
            localStorageUpdates event model
            
        Something ->
          noOp <| { model | user = Just (User model.loginFormData.username) }


noOp : Model -> ( Model, Cmd Msg )
noOp model =
    ( model, Cmd.none )



--ToDO Bring In Lenses


updateFormData : (LoginFormData -> LoginFormData) -> Model -> Model
updateFormData f m =
    let
        data =
            f m.loginFormData
    in
        { m | loginFormData = data }


localStorageUpdates : LocalStorageEvent -> Model -> ( Model, Cmd Msg )
localStorageUpdates event model =
    ( model, Cmd.none )
