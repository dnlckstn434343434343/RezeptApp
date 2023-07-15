module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Browser

type alias Model =
    {
    }

type Msg
    = SomeMessage
    | AnotherMessage String

view : Model -> Html Msg
view model =
    div []
        [ a [ href "/index.html" ]
            [ img [ class "img", src "./Bilder/Logo.jpg", alt "Logo" ] [] ]
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
                    ]
                    []
                , div [class "svg.Unterschrift"] [ text "Frühstück" ]
                ]
            , div []
                [ img
                    [ class "svg"
                    , src "./SVGs/lunch.svg"
                    ]
                    []
                , div [class "svg.Unterschrift"] [ text "Mittag-/Abendessen" ]
                ]
            , div []
                [ img
                    [ class "svg"
                    , src "./SVGs/dessert.svg"
                    ]
                    []
                , div [class "svg.Unterschrift"] [ text "Dessert/Süßes" ]
                ]
            ]
        ]



