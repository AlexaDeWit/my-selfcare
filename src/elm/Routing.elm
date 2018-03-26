module Routing exposing (Route, parseLocation)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = LoginRoute
    | LandingRoute
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map LoginRoute top
        , map LandingRoute (s "landing")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
