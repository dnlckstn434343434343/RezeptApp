-- Seite für das Speichern der Lieblingsrezepte
module Lieblingsrezepte exposing (..)

view : Model -> Html Msg
view model =
    div []
        , h2 [] [ text "Drücke auf das Plus und füge ein neues Rezept zu deiner Sammlung hinzu:" ]
        , button [ onClick ToggleAddRecipeForm ] 
        [ text (if model.showAddRecipeForm then "-" else "+") ]
        , if model.showAddRecipeForm then
        div []
        [ input [ placeholder "Name", onInput UpdateNameInput ] []
        , input [ placeholder "Ingredients", onInput UpdateIngredientsInput ] []
        , textarea [ placeholder "Steps", onInput UpdateStepsInput ] []
        , input [ placeholder "Time", onInput UpdateTimeInput ] []
        , select [ onInput UpdateDifficultyInput ]
            [ option [ value "" ] [ text "Select Difficulty" ]
            , option [ value "Leicht" ] [ text "Leicht" ]
            , option [ value "Mittel" ] [ text "Mittel" ]
            , option [ value "Schwer" ] [ text "Schwer" ]
            ]
        , select [ onInput UpdateCategoryInput ]
            [ option [ value "" ] [ text "Select Category" ]
            , option [ value "Frühstück" ] [ text "Frühstück" ]
            , option [ value "Mittag-/Abendessen" ] [ text "Mittag-/Abendessen" ]
            , option [ value "Dessert/Süßes" ] [ text "Dessert/Süßes" ]
            ]
        , button [ onClick AddRecipe ] [ text "Add Recipe" ]
        ]
        else
        text ""
        , h2 [] [ text "Hier sind deine gespeicherten Lieblingsrezepte:" ]
        , ul []
        (List.map viewRecipe model.recipes)

        ]