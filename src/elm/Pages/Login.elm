module Pages.Login exposing (login)

import Html exposing (Html)
import Html.Attributes as Attributes
import Msg exposing (..)
import Bootstrap.Form as Form
import Bootstrap.Form.Input as Input


-- Test
--The Login Page, for now is just static html, and consumed by the view page if a user model is missing


login : Html Msg
login =
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
            [ Attributes.class "form-signin"
            , Attributes.style
                [ ( "max-width", "350px" )
                , ( "width", "350px" )
                , ( "margin", "0 auto" )
                ]
            ]
            [ Input.text
                [ Input.id "username"
                , Input.small
                , Input.defaultValue ""
                ]
            ]
        ]
