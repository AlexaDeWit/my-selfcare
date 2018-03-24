module View exposing (..)

import Html exposing (Html)
import Element exposing (..)
import StyleTags exposing (..)
import StyleSheet exposing (..)
import Model exposing (..)
import Msg exposing (..)


-- View


view : Model -> Html Msg
view model =
    Element.layout stylesheet <|
        column NoStyle
            []
            [ el Navigation [] (Maybe.withDefault "Sign Up!" model.username |> text)
            , el Header [] (text "Welcome to My SelfCare")
            , el Body [] (text "Here is an example of the body")
            , el Footer [] (text "Here is some Footer stuff")
            ]
