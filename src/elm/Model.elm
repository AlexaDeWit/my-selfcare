module Model exposing (..)

-- Model


type alias Model =
    { user : Maybe User
    , message : String
    }


type alias User =
    { username : String
    }
