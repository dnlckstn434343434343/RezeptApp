module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Browser
import Html.Events exposing (onClick)

type alias Model =
    {
    }

type Msg
    = SomeMessage
    | AnotherMessage String
    | SvgClicked Int

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

view : Model -> Html Msg
view model =
    div []
        [ a [ href "/Startseite.html" ]
            [ img [ src "./Bilder/Logo.jpg", alt "Logo" ] [] ]
        , h1 [] [ text "Was kochst du heute? Klicke auf eine beliebige Kategorie und finde es heraus." ]
        , div [] []
        , div [ class "header-links" ]
            [ a [ href "/index.html" ] [ text "Startseite" ]
            , a [ href "/lieblingsrezepte.html" ] [ text "Lieblingsrezepte" ]
            , a [ href "/einkauflisten.html" ] [ text "Einkauflisten" ]
            ]
        , div [] []
        , h2 [] [ text "Was kochst du heute? Klicke auf eine beliebige Kategorie und finde es heraus." ]
        , div [ class "svg-container" ]
            [ div []
                [ img
                    [ class "svg"
                    , src "./SVGs/breakfast.svg"
                    , onClick (SvgClicked 1)
                    ]
                    []
                , div [class "svg.Unterschrift"] [ text "Frühstück" ]
                ]
            , div []
                [ img
                    [ class "svg"
                    , src "./SVGs/lunch.svg"
                    , onClick (SvgClicked 2)
                    ]
                    []
                , div [class "svg.Unterschrift"] [ text "Mittag-/Abendessen" ]
                ]
            , div []
                [ img
                    [ class "svg"
                    , src "./SVGs/dessert.svg"
                    , onClick (SvgClicked 3)
                    ]
                    []
                , div [class "svg.Unterschrift"] [ text "Dessert/Süßes" ]
                ]
            ]
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

        SvgClicked int ->
            -- Aktualisieren Sie hier Ihr Modell basierend auf der Nachricht SvgClicked
            model
