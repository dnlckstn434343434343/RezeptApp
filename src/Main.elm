module Main exposing (main)

import Browser
import Startseite exposing (init, update, view)

main : Program () Startseite.Model Startseite.Msg
main =
    Browser.sandbox
        { init = Startseite.init
        , update = Startseite.update
        , view = Startseite.view
        }
