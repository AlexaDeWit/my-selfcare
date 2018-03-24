module Pages.Login exposing (..)

import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.StyleTags exposing (..)
import Style.StyleSheet exposing (..)
import Model exposing (..)
import Msg exposing (..)


login : Html Msg
login =
    Element.layout stylesheet <|
        column Main
            []
            [ el NoStyle [] (text "login!")
            ]
