module Msg exposing (..)

-- Msg
-- These are the different "Messages" that will be "sent" in a way to represent changes to what the application should do. The update function will know how to
-- apply these to the model and run any subsequent commands, and after that the view will present the newly updated model


type Msg
    = DisplayMessage String
    | UpdateUsername String
