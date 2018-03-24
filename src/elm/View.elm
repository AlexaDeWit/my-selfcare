module View exposing (view)

import Html exposing (Html)
import Element exposing (..)
import Element.Attributes exposing (..)
import Style.StyleTags exposing (..)
import Style.StyleSheet exposing (..)
import Pages.Login exposing (..)
import Model exposing (..)
import Msg exposing (..)


-- View
-- The view function is the overall representation of the application. Everything the user can see or directly interract with is in the view.
-- being that it is a function from a model to an html message, this represents the idea of rendering the model(application state) in a single function.
-- Obviously that's a huge task, so as seen here, we can try to "break" the view function into many supporting functions, and even sub-pages
-- An important node is that this project is using the "Style-Elements" package to simplify and clean up the rendering and presentation of html.
-- This means that some example code one might find will not always apply for views, and style-element code might be needed to be considered instead.
-- The good news is that style-elements is very well documented and open source.
-- Link:  http://package.elm-lang.org/packages/mdgriffith/style-elements/4.3.0


view : Model -> Html Msg
view model =
    case model.user of
        Just _ ->
            defaultPage model

        Nothing ->
            login


defaultPage : Model -> Html Msg
defaultPage model =
    Element.layout stylesheet <|
        column Main
            []
            [ nav model
            , el Header [] (text "Welcome to My SelfCare")
            , el Body [] (text "Here is an example of the body")
            , el Footer [] (text "Here is some Footer stuff")
            ]


nav : Model -> Element Styles variation msg
nav model =
    wrappedRow Navigation
        [ padding 10, spread, verticalCenter ]
        [ logo
        , el NoStyle [] (text "Menu Elements")
        , el NoStyle [] (Maybe.withDefault "Sign Up!" (Maybe.map (\u -> u.username) model.user) |> text)
        ]


logo =
    image NoStyle
        [ maxHeight (px 40), maxWidth (px 40) ]
        { src = "https://www.davidbenrimon.com/files-wide/uploads/logo-placeholder@2x.png"
        , caption = "Neat"
        }
