module Pages.Login exposing (..)

import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.StyleTags exposing (..)
import Style.StyleSheet exposing (..)
import Model exposing (..)
import Msg exposing (..)
import Element.Input as Input

--The Login Page, for now is just static html, and consumed by the view page if a user model is missing



login : Html Msg
login =
    Element.layout stylesheet <|
        column Main
            []
            [
            Input.text NoStyle [ center ] (usernameText)
            --,Input.text NoStyle [] ("Password")
            ,button NoStyle [] (text "Login")
            ]

usernameText : Input.Text Styles b Msg
usernameText =
    { onChange = (\t -> UpdateUsername t)
    , value = ""
    , label = Input.placeholder {text = "Username", label = Input.hiddenLabel "Username"}
    , options = []
    }