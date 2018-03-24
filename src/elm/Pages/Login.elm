module Pages.Login exposing (..)

import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.StyleTags exposing (..)
import Style.StyleSheet exposing (..)
import Model exposing (..)
import Msg exposing (..)


--The Login Page, for now is just static html, and consumed by the view page if a user model is missing


login : Html Msg
login =
    Element.layout stylesheet <|
        column Main
            []
            [ el NoStyle [] (text "login!")
            ]
