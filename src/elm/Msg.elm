module Msg exposing (..)

import Json.Decode exposing (..)
import Navigation exposing (Location)


-- Msg
-- These are the different "Messages" that will be "sent" in a way to represent changes to what the application should do. The update function will know how to
-- apply these to the model and run any subsequent commands, and after that the view will present the newly updated model


type Msg
    = Login LoginForm
    | LocalStorage LocalStorageEvent
    | OnLocationChange Location
    | Something

type LoginForm
    = UpdateUsername String
    | UpdatePassword String


type LocalStorageEvent
    = SaveJwt String
    | RequestJwt
    | ReceiveJwt ( String, Json.Decode.Value )
