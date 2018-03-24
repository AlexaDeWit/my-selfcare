module Pages.Login exposing (login)

import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.StyleTags exposing (..)
import Style.StyleSheet exposing (..)
import Model exposing (Model)
import Msg exposing (..)
import Element.Input as Input
import Elements exposing (..)


--The Login Page, for now is just static html, and consumed by the view page if a user model is missing


login : Html Msg
login =
    Element.layout stylesheet <|
        column Main
            []
            [ usernameText
            , passwordText
            , button NoStyle [] (text "Login")
            ]


usernameText =
    basicTextEntry NoStyle "Username" [] (\t -> UpdateUsername t |> Login) Input.text


passwordText =
    basicTextEntry NoStyle "Password" [] (\t -> UpdatePassword t |> Login) Input.currentPassword
