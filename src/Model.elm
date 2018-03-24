module Model exposing (..)

-- Model


type alias Model =
    { username : Maybe String
    , message : String
    }


model : Model
model =
    Model Nothing "Welcome To Empty App Thing"
