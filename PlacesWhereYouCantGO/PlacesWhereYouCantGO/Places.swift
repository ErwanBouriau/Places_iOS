//
//  Places.swift
//  PlacesWhereYouCantGO
//
//  Created by Remy Jacquet on 09/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import Foundation

public struct Place {
    let longitude: float_t
    let latitude: float_t
    let title: String
    let image: String
    let pays: String
    let site: String
    let desc: String
}

public class PlacesApi {
    
    public func getLieux() -> [Place] {
        return lieux
    }
    
    let lieux =  [
        Place(
            longitude: 48.858472,
            latitude: 2.294496,
            title: "Tour Eiffel",
            image: "Tour-Eiffel.jpg",
            pays: "France",
            site: "https://www.toureiffel.paris/fr",
            desc: ""
        ),
        Place(
            longitude: 43.723130,
            latitude: 10.396618,
            title: "Tour de Pise",
            image: "Tour-de-pise.jpeg",
            pays: "Italie",
            site: "http://www.torrepisa.com/torre-di-pisa/",
            desc: ""
        ),
        Place(
            longitude: 45.185203,
            latitude: 5.735433,
            title: "Tour Perret",
            image: "Tour-Perret.jpg",
            pays: "France",
            site: "https://www.grenoble-tourisme.com/fr/catalogue/activite/tour-perret-35439/",
            desc: ""
        ),
        Place(
            longitude: 51.500916,
            latitude: -0.124690,
            title: "Big Ben",
            image: "Big-Ben.jpg",
            pays: "Angleterre",
            site: "http://monumentsdelondres.com/big-ben",
            desc: ""
        ),
        Place(
            longitude: 29.977594,
            latitude: 31.132538,
            title: "Pyramide de Gizeh",
            image: "Pyramide-de-Gizeh.jpg",
            pays: "Egypte",
            site: "https://www.passion-egyptienne.fr/Gizeh%20site.htm",
            desc: ""
        ),
        Place(
            longitude: 40.689453,
            latitude: -74.044157,
            title: "Statue de la Liberté",
            image: "Statue-de-la-liberte.jpg",
            pays: "Etats-Unis",
            site: "https://www.nps.gov/stli/index.htm",
            desc: ""
        ),
        Place(
            longitude: -33.856562,
            latitude: 151.215565,
            title: "Opéra de Sydney",
            image: "Opera-sydney.jpg",
            pays: "Australie",
            site:  "https://www.sydneyoperahouse.com/",
            desc: ""
        ),
        Place(
            longitude: 40.433686,
            latitude: 116.573375,
            title: "Grande muraille de Chine",
            image: "Grande-muraille-de-Chine.jpg",
            pays: "Chine",
            site: "https://www.lamurailledechine.net/",
            desc: ""
        ),
        Place(
            longitude: -22.951738,
            latitude: -43.210029,
            title: "Christ rédempteur",
            image: "Christ-redempteur.jpg",
            pays: "Brésil",
            site: "https://www.merveilles-du-monde.com/Christ-redempteur/",
            desc: ""
        ),
        Place(
            longitude: 27.175412,
            latitude: 78.042700,
            title: "Taj Mahal",
            image: "Taj-Mahal.jpeg",
            pays: "Inde",
            site: "https://www.tajmahal.gov.in/",
            desc: ""
        ),
        Place(
            longitude: 48.636430,
            latitude: -1.509438,
            title: "Mont Saint-Michel",
            image: "Mont-Saint-Michel.jpg",
            pays: "France",
            site: "https://www.ot-montsaintmichel.com/index.htm",
            desc: ""
        ),
        Place(
            longitude: 55.752060,
            latitude: 37.617515,
            title: "Kremlin",
            image: "Kremlin.jpg",
            pays: "Russie",
            site: "https://www.kreml.ru/en-Us/museums-moscow-kremlin/",
            desc: ""
        ),
        Place(
            longitude: 41.403693,
            latitude: 2.174376,
            title: "Sagrada Familia",
            image: "Sagrada-Familia.jpg",
            pays: "Espagne",
            site: "https://sagradafamilia.org/en/home",
            desc: ""
        ),
        Place(
            longitude: 52.516327,
            latitude: 13.377693,
            title: "Porte de Brandebourg",
            image: "Porte-de-Brandebourg.jpg",
            pays: "Allemagne",
            site: "https://www.berlin.de/fr/monuments/3560266-3104069-porte-de-brandebourg.fr.html",
            desc: ""
        ),
        Place(
            longitude: 13.751998,
            latitude: 100.493273,
            title: "Temple du Buddha",
            image: "Temple-du-buddha.jpg",
            pays: "Thaïlande",
            site: "https://vivre-en-thailande.com/wat-phra-kaeo-temple-bouddha-demeraude/3561/",
            desc: ""
        ),
        Place(
            longitude: -27.110854,
            latitude: -109.351277,
            title: "Statue de l'Île de Pâques",
            image: "Statue-ile-de-pâques.jpg",
            pays: "Chili",
            site: "https://www.voyage-au-chili.com/chili_iledepaques.php",
            desc: ""
        ),
        Place(
            longitude: 43.093335,
            latitude: -79.073071,
            title: "Chute du Niagara",
            image: "Chute-du-Niagara.jpg",
            pays: "Etats-Unis",
            site: "https://fr.niagarafallstourism.com/",
            desc: ""
        ),
        Place(
            longitude: 41.008625,
            latitude: 28.980152,
            title: "Sainte-Sophie",
            image: "Sainte-Sophie.jpg",
            pays: "Turquie",
            site: "http://www.istanbul-city.fr/guide-istanbul/sainte-sophie-ayasofya/",
            desc: ""
        ),
        Place(
            longitude: 20.684292,
            latitude: -88.567783,
            title: "Chichen Itza",
            image: "Chichen-Itza.jpg",
            pays: "Mexique",
            site: "http://mundomaya.travel/fr/arqueologia/top-10/item/chichen-itza.html",
            desc: ""
        ),
        Place(
            longitude: 45.198889,
            latitude: 5.725335,
            title: "Fort de la Bastille",
            image: "Fort-de-la-Bastille.jpg",
            pays: "France",
            site: "https://bastille-grenoble.fr/",
            desc: ""
        ),
        Place(
            longitude: 50.894954,
            latitude: 4.341551,
            title: "Atomium",
            image: "Atomium.jpg",
            pays: "Belgique",
            site: "https://atomium.be/home/cover",
            desc: ""
        ),
        Place(
            longitude: 37.971538,
            latitude: 23.725751,
            title: "Acropole",
            image: "Acropole.jpg",
            pays: "Grèce",
            site: "http://monumentsathenes.com/acropole",
            desc: ""
        ),
    ]
}
