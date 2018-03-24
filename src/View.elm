module View exposing (..)

import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.StyleTags exposing (..)
import Style.StyleSheet exposing (..)
import Model exposing (..)
import Msg exposing (..)


-- View


view : Model -> Html Msg
view model =
    Element.layout stylesheet <|
        column NoStyle
            []
            [ heading model
            , el Header [] (text "Welcome to My SelfCare")
            , el Body [] (text "Here is an example of the body")
            , el Footer [] (text "Here is some Footer stuff")
            ]


heading : Model -> Element Styles variation msg
heading model =
    el Navigation [ alignRight ] (Maybe.withDefault "Sign Up!" model.username |> text)
