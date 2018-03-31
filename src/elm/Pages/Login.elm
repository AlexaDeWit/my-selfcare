module Pages.Login exposing (login)

import Html exposing (Html)
import Html.Attributes as Attributes
import Msg exposing (..)
import Bootstrap.Form as Form
import Bootstrap.Button as Button
import Bootstrap.Form.Input as Input


-- Test
--The Login Page, for now is just static html, and consumed by the view page if a user model is missing


login : Html Msg
login =
    loginLayout loginElements


loginLayout : List (Html Msg) -> Html Msg
loginLayout fields =
    Html.div
        [ Attributes.class "text-center"
        , Attributes.style
            [ ( "display", "flex" )
            , ( "justify-content", "center" )
            , ( "flex-direction", "column" )
            , ( "height", "100%" )
            ]
        ]
        [ Form.form
            [ Attributes.style
                [ ( "max-width", "350px" )
                , ( "width", "350px" )
                , ( "margin", "0 auto" )
                ]
            ]
            fields
        ]


loginElements : List (Html Msg)
loginElements =
    [ Input.text
        [ Input.id "username"
        , Input.small
        , Input.defaultValue ""
        , Input.placeholder "Username"
        , Input.onInput (\s -> Login (UpdateUsername s))
        , Input.attrs
          [ 
            Attributes.style
              [
                ("margin", "5px 0px")
              ]
          ]
        ]
      , Input.password
        [ Input.id "password"
        , Input.small
        , Input.defaultValue ""
        , Input.placeholder "Password"
        , Input.onInput (\s -> Login (UpdatePassword s))
        , Input.attrs
          [ 
            Attributes.style
              [
                ("margin", "5px 0px 10px")
              ]
          ]
        ]
      , Button.button
        [ Button.primary
        , Button.onClick Something
        , Button.block
        ]
        [ Html.text "Login"
        ]
    ]
