module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Decode
import StyleTags exposing (..)
import StyleSheet exposing (..)
import Element exposing (..)


main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- Model


type alias Model =
    { username : Maybe String
    , message : String
    }


model : Model
model =
    Model Nothing "Welcome To Empty App Thing"



-- Msg


type Msg
    = DisplayMessage String
    | UpdateUsername String



-- Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        mdl =
            case msg of
                DisplayMessage message ->
                    { model | message = message }

                UpdateUsername username ->
                    { model | username = Just username }

        msgp =
            Cmd.none
    in
        ( mdl, msgp )



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



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



--  div []
--      [ h1 [] [ Maybe.withDefault "Sign Up!" model.username |> text ]
--      , h1 [] [ text model.message ]
--      , input [ type_ "text", placeholder "Username", onInput UpdateUsername ] []
--      , input [ type_ "text", placeholder "Message", onInput DisplayMessage ] []
--      ]
