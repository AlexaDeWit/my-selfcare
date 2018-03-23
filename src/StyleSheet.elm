module StyleSheet exposing (..)

import Color exposing (..)
import Style exposing (..)
import Style.Color as Color
import StyleTags exposing (..)


stylesheet =
    Style.styleSheet
        [ Style.style Heading
            [ Color.text <| rgb 200 100 58 ]
        ]
