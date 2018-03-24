module Elements exposing (..)

import Element exposing (..)
import Style.StyleTags exposing (..)
import Msg exposing (..)
import Element.Attributes exposing (..)
import Element.Input as Input


type alias Attrs variation =
    List (Attribute variation Msg)


type alias Txt variation =
    Input.Text Styles variation Msg


type alias TextBoxFunction variation =
    Styles -> Attrs variation -> Txt variation -> Element Styles variation Msg


type alias Elem variation =
    Element Styles variation Msg


basicTextEntry : Styles -> String -> Attrs a -> (String -> Msg) -> TextBoxFunction a -> Elem a
basicTextEntry styles name attr f textFunction =
    let
        textEffect : Txt a
        textEffect =
            { onChange = f
            , value = ""
            , label = Input.placeholder { text = name, label = Input.hiddenLabel name }
            , options = []
            }
    in
        textFunction styles attr textEffect
