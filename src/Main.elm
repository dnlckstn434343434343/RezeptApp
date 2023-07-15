module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Browser

main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }

init : Model
init =
    { -- Initialisieren Sie hier Ihr Modell
    }



type alias Model =
    {
    }

type Msg
    = SomeMessage
    | AnotherMessage String

view : Model -> Html Msg
view model =
    div []
        [ h2 [] [ text "Was kochst du heute? Klicke auf eine beliebige Kategorie und finde es heraus." ]
        
        ]

update : Msg -> Model -> Model
update msg model =
    case msg of
        SomeMessage ->
            -- Aktualisieren Sie hier Ihr Modell basierend auf der Nachricht SomeMessage
            model

        AnotherMessage string ->
            -- Aktualisieren Sie hier Ihr Modell basierend auf der Nachricht AnotherMessage
            model

