module Main exposing (..)

import Browser
import Einkaufslisten
import Lieblingsrezepte
import Html exposing (..)
import Html.Attributes exposing (..)



-- Combined Model

type alias Model =
    { lieblingsrezepteModel : Lieblingsrezepte.Model
    , einkaufslistenModel : Einkaufslisten.Model
    }


-- Combined Msg

type Msg
    = LieblingsrezepteMsg Lieblingsrezepte.Msg
    | EinkaufslistenMsg Einkaufslisten.Msg


-- Combined Update

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LieblingsrezepteMsg subMsg ->
            let
                ( updatedLieblingsrezepteModel, lieblingsrezepteCmd ) =
                    Lieblingsrezepte.update subMsg model.lieblingsrezepteModel
            in
            ( { model | lieblingsrezepteModel = updatedLieblingsrezepteModel }, Cmd.map LieblingsrezepteMsg lieblingsrezepteCmd )

        EinkaufslistenMsg subMsg ->
            let
                ( updatedEinkaufslistenModel, einkaufslistenCmd ) =
                    Einkaufslisten.update subMsg model.einkaufslistenModel
            in
            ( { model | einkaufslistenModel = updatedEinkaufslistenModel }, Cmd.map EinkaufslistenMsg einkaufslistenCmd )


-- Combined View

view : Model -> Html Msg
view model =
    div []
        [ div [ ] [ Lieblingsrezepte.view model.lieblingsrezepteModel |> Html.map LieblingsrezepteMsg ]
        , div [ ] [ Einkaufslisten.view model.einkaufslistenModel |> Html.map EinkaufslistenMsg ]
        ]



-- Combined Main

main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


-- Combined Initialization

init : () -> ( Model, Cmd Msg )
init _ =
    let
        ( lieblingsrezepteModel, lieblingsrezepteCmd ) =
            Lieblingsrezepte.init ()

        ( einkaufslistenModel, einkaufslistenCmd ) =
            Einkaufslisten.init ()
    in
    ( { lieblingsrezepteModel = lieblingsrezepteModel, einkaufslistenModel = einkaufslistenModel }
    , Cmd.batch [ Cmd.map LieblingsrezepteMsg lieblingsrezepteCmd, Cmd.map EinkaufslistenMsg einkaufslistenCmd ]
    )
