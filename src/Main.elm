module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Decode
import StyleTags exposing (..)
import StyleSheet exposing (..)
import Element exposing (..)


main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
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


update : Msg -> Model -> Model
update msg model =
    case msg of
        DisplayMessage message ->
            { model | message = message }

        UpdateUsername username ->
            { model | username = Just username }



-- View


view : Model -> Html Msg
view model =
    Element.layout stylesheet <|
        el Heading [] (Maybe.withDefault "Sign Up!" model.username |> text)



--  div []
--      [ h1 [] [ Maybe.withDefault "Sign Up!" model.username |> text ]
--      , h1 [] [ text model.message ]
--      , input [ type_ "text", placeholder "Username", onInput UpdateUsername ] []
--      , input [ type_ "text", placeholder "Message", onInput DisplayMessage ] []
--      ]
