module Style.StyleSheet exposing (..)

import Style exposing (..)
import Style.Color as Color
import Style.StyleTags exposing (..)
import Style.ColorPalette exposing (..)


--The stylesheet takes Style Tags and relates them to various styling effects, such as colouration and font etc


stylesheet : StyleSheet Styles variatio
stylesheet =
    Style.styleSheet
        [ Style.style Navigation
            [ Color.text white
            , Color.background blue
            ]
        , Style.style Header
            [ Color.text white
            , Color.background darkViolet
            ]
        , Style.style SubHeading
            [ Color.text darkViolet
            , Color.background white
            ]
        , Style.style Body
            [ Color.text blue
            , Color.background white
            ]
        , Style.style Footer
            [ Color.text white
            , Color.background blue
            ]
        , Style.style NoStyle []
        , Style.style Main []
        ]
