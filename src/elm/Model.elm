module Model exposing (..)

-- Model
-- The data model of the entire application. An Elm application is a perpetual presentation of this model via a view function


type alias Model =
    -- Maybe indicates a type that may be Present, ie. Just User, or missing, ie. Nothing This lets us represent the idea of loading the application without a user
    { user : Maybe User
    , loginFormData : LoginFormData
    }


type alias User =
    { username : String
    }


type alias LoginFormData =
    { username : String
    , password : String
    }
